       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAYMENT-PROCESSING.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT PAYMENT-FILE
               ASSIGN TO "data/input/payments.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT PAYMENT-OUTPUT
               ASSIGN TO "data/output/payments-processed.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT ERROR-OUTPUT
               ASSIGN TO "data/output/payment-errors.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD  PAYMENT-FILE.
       
       COPY PAYMENT-RECORD.

       FD  PAYMENT-OUTPUT.
       01  PAYMENT-OUTPUT-RECORD       PIC X(80).

       FD  ERROR-OUTPUT.
       01  ERROR-OUTPUT-RECORD          PIC X(120).

       WORKING-STORAGE SECTION.

       01  WS-END-OF-FILE              PIC X VALUE "N".

       01  WS-COUNTERS.
           05 WS-READ-COUNT             PIC 9(4) VALUE 0.
           05 WS-PROCESSED-COUNT        PIC 9(4) VALUE 0.
           05 WS-REJECTED-COUNT         PIC 9(4) VALUE 0.

       01  WS-PAYMENT-DATA.
           05 WS-AMOUNT                 PIC 9(7)V99.

       01  WS-ERROR-CODE                PIC X(4).
       01  WS-ERROR-DESCRIPTION         PIC X(60).

       PROCEDURE DIVISION.

       MAIN-PROCESS.

           PERFORM INITIALIZE-PROCESS

           PERFORM UNTIL WS-END-OF-FILE = "Y"
               READ PAYMENT-FILE
                   AT END
                       MOVE "Y" TO WS-END-OF-FILE
                   NOT AT END
                       ADD 1 TO WS-READ-COUNT
                       PERFORM PROCESS-PAYMENT
               END-READ
           END-PERFORM

           PERFORM CLOSE-FILES
           PERFORM DISPLAY-SUMMARY

           MOVE 0 TO RETURN-CODE
           GOBACK.

       INITIALIZE-PROCESS.

           OPEN INPUT PAYMENT-FILE
                OUTPUT PAYMENT-OUTPUT
                       ERROR-OUTPUT

           MOVE 0 TO WS-READ-COUNT
           MOVE 0 TO WS-PROCESSED-COUNT
           MOVE 0 TO WS-REJECTED-COUNT.

       PROCESS-PAYMENT.

           MOVE SPACES TO WS-ERROR-CODE
                          WS-ERROR-DESCRIPTION

           IF PAYMENT-ID = SPACES
               MOVE "E001" TO WS-ERROR-CODE
               MOVE "INVALID PAYMENT ID"
                 TO WS-ERROR-DESCRIPTION
               PERFORM REJECT-PAYMENT

           ELSE
               IF ACCOUNT-ID = SPACES
                   MOVE "E002" TO WS-ERROR-CODE
                   MOVE "INVALID ACCOUNT ID"
                     TO WS-ERROR-DESCRIPTION
                   PERFORM REJECT-PAYMENT

               ELSE
                   PERFORM VALIDATE-AMOUNT
               END-IF
           END-IF.


       VALIDATE-AMOUNT.

           IF PAYMENT-AMOUNT = SPACES
               MOVE "E003" TO WS-ERROR-CODE
               MOVE "INVALID PAYMENT AMOUNT"
                 TO WS-ERROR-DESCRIPTION
               PERFORM REJECT-PAYMENT

           ELSE
               MOVE PAYMENT-AMOUNT TO WS-AMOUNT

               IF WS-AMOUNT <= 0
                   MOVE "E003" TO WS-ERROR-CODE
                   MOVE "INVALID PAYMENT AMOUNT"
                     TO WS-ERROR-DESCRIPTION
                   PERFORM REJECT-PAYMENT

               ELSE
                   PERFORM ACCEPT-PAYMENT
               END-IF
           END-IF.

       ACCEPT-PAYMENT.

           MOVE PAYMENT-RECORD
             TO PAYMENT-OUTPUT-RECORD

           WRITE PAYMENT-OUTPUT-RECORD

           ADD 1 TO WS-PROCESSED-COUNT.

       REJECT-PAYMENT.

           MOVE SPACES TO ERROR-OUTPUT-RECORD

           STRING
               PAYMENT-ID
               " | "
               WS-ERROR-CODE
               " | "
               WS-ERROR-DESCRIPTION
               DELIMITED BY SIZE
               INTO ERROR-OUTPUT-RECORD
           END-STRING

           WRITE ERROR-OUTPUT-RECORD

           ADD 1 TO WS-REJECTED-COUNT.

       CLOSE-FILES.

           CLOSE PAYMENT-FILE
                 PAYMENT-OUTPUT
                 ERROR-OUTPUT.

       DISPLAY-SUMMARY.

           DISPLAY "========================================"
           DISPLAY "       PAYMENT PROCESSING BATCH"
           DISPLAY "========================================"
           DISPLAY "RECORDS READ:       " WS-READ-COUNT
           DISPLAY "RECORDS PROCESSED:  " WS-PROCESSED-COUNT
           DISPLAY "RECORDS REJECTED:   " WS-REJECTED-COUNT
           DISPLAY "========================================".
