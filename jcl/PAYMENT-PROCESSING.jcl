//PAYPROC  JOB (ACCT),'PAYMENT PROCESSING',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID
//*
//* ================================================================
//* PROCESAMIENTO BATCH DE PAGOS
//*
//* Programa COBOL:
//*     PAYMENT-PROCESSING
//*
//* Entrada:
//*     Archivo secuencial de pagos
//*
//* Salidas:
//*     Pagos procesados
//*     Errores de validación
//* ================================================================
//*
//* Correspondencia COBOL / DDNAME:
//*   PAYMENT-FILE   -> PAYIN
//*   PAYMENT-OUTPUT -> PAYOUT
//*   ERROR-OUTPUT   -> PAYERR
//*
//PAYSTEP  EXEC PGM=PAYPROC
//*
//STEPLIB  DD  DSN=BANCO.RIO.LOADLIB,DISP=SHR
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//*
//PAYIN    DD  DSN=BANCO.RIO.PAYMENTS.INPUT,DISP=SHR
//*
//PAYOUT   DD  DSN=BANCO.RIO.PAYMENTS.PROCESSED,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,2)),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0)
//*
//PAYERR   DD  DSN=BANCO.RIO.PAYMENTS.ERRORS,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,2)),
//             DCB=(RECFM=FB,LRECL=120,BLKSIZE=0)
//*
//SYSIN    DD  DUMMY

