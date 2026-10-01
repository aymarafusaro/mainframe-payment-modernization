# Layout del archivo de pagos

## Descripción

El archivo `data/input/payments.dat` contiene los pagos a procesar por el programa batch `payment-processing.cbl`.

El archivo utiliza registros secuenciales de longitud fija, sin separadores entre campos.

Cada registro tiene una longitud total de **40 posiciones**.

## Estructura del registro

| Campo          | Posiciones | Longitud | Tipo         |
| -------------- | ---------: | -------: | ------------ |
| PAYMENT-ID     |       1-10 |       10 | Alfanumérico |
| ACCOUNT-ID     |      11-20 |       10 | Alfanumérico |
| PAYMENT-AMOUNT |      21-30 |       10 | Alfanumérico |
| PAYMENT-STATUS |      31-40 |       10 | Alfanumérico |

## Ejemplo

Registro:

```text
PAY0000001ACC000000100001500.00PENDING
```

Descomposición:

```text
PAYMENT-ID       = PAY0000001
ACCOUNT-ID       = ACC0000001
PAYMENT-AMOUNT   = 00001500.00
PAYMENT-STATUS   = PENDING
```

## Validaciones

El procesamiento valida:

* Que `PAYMENT-ID` no esté vacío.
* Que `ACCOUNT-ID` no esté vacío.
* Que `PAYMENT-AMOUNT` no esté vacío.
* Que `PAYMENT-AMOUNT` sea mayor que cero.

Los registros válidos se escriben en:

```text
data/output/payments-processed.dat
```

Los registros rechazados se escriben en:

```text
data/output/payment-errors.dat
```

## Copybook

La estructura del registro está centralizada en:

```text
copybooks/PAYMENT-RECORD.CPY
```
