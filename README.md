# Mainframe Payment Modernization

Proyecto de portfolio que simula la evolución y mantenimiento de un sistema de procesamiento de pagos desarrollado sobre tecnologías Mainframe.

El proyecto representa un escenario bancario ficticio en el que un sistema existente requiere mantenimiento, validaciones, procesamiento batch, controles de calidad, documentación y evolución funcional.

## Objetivo

Simular un entorno de trabajo profesional Mainframe, combinando:

* Desarrollo COBOL Batch.
* Procesamiento de archivos secuenciales.
* COPYBOOKS para definición de estructuras.
* Validación y tratamiento de errores.
* Procesamiento y generación de archivos de salida.
* JCL para ejecución de procesos batch.
* Pruebas y validación de resultados.
* Gestión de incidentes y soporte.
* Documentación técnica.
* Metodología Agile.
* Gestión de backlog, riesgos y dependencias.
* Gestión de cambios y releases.

## Arquitectura

```text
                 SISTEMA DE PAGOS
                        |
                        v
                COBOL BATCH
                        |
            +-----------+-----------+
            |                       |
            v                       v
     ARCHIVO DE ENTRADA       VALIDACIONES
      payments.dat                  |
            |                       |
            +-----------+-----------+
                        |
              +---------+---------+
              |                   |
              v                   v
       PAGOS PROCESADOS      PAGOS RECHAZADOS
              |                   |
              v                   v
 payments-processed.dat    payment-errors.dat
```

## Tecnologías

* COBOL
* GnuCOBOL 3.2
* JCL
* VS Code
* Git
* GitHub
* Archivos secuenciales de longitud fija
* COPYBOOKS
* Conceptos de procesamiento Batch
* Metodología Agile / Scrum

## Estructura del proyecto

```text
mainframe-payment-modernization/
│
├── copybooks/
│   └── PAYMENT-RECORD.CPY
│
├── data/
│   ├── input/
│   │   └── payments.dat
│   └── output/
│       ├── payments-processed.dat
│       └── payment-errors.dat
│
├── docs/
│   ├── agile/
│   │   ├── backlog.md
│   │   ├── daily-scrum-sprint-01.md
│   │   ├── sprint-01-planning.md
│   │   └── stakeholders.md
│   │
│   ├── architecture/
│   │   ├── payment-file-layout.md
│   │   └── project-overview.md
│   │
│   └── risks/
│       └── risk-and-dependency-matrix.md
│
├── programs/
│   └── payment-processing.cbl
│
├── .gitignore
├── README.md
└── zapp.yaml
```

## Procesamiento actual

El programa `payment-processing.cbl` procesa un archivo secuencial de pagos con registros de longitud fija.

Cada registro tiene 40 posiciones:

| Campo          | Posiciones | Longitud |
| -------------- | ---------: | -------: |
| PAYMENT-ID     |       1-10 |       10 |
| ACCOUNT-ID     |      11-20 |       10 |
| PAYMENT-AMOUNT |      21-30 |       10 |
| PAYMENT-STATUS |      31-40 |       10 |

La estructura está centralizada en el COPYBOOK:

```text
copybooks/PAYMENT-RECORD.CPY
```

## Validaciones

El proceso valida:

* Identificador de pago.
* Identificador de cuenta.
* Importe del pago.
* Importe mayor que cero.

Los pagos válidos son enviados a:

```text
data/output/payments-processed.dat
```

Los pagos rechazados son enviados a:

```text
data/output/payment-errors.dat
```

## Resultado de prueba

El procesamiento actual utiliza 6 registros de entrada:

```text
Registros leídos:        6
Registros procesados:    4
Registros rechazados:    2
```

Los rechazos corresponden a:

```text
PAY0000003
E003 - INVALID PAYMENT AMOUNT

PAY0000005
E002 - INVALID ACCOUNT ID
```

## Documentación Agile

El proyecto incluye documentación que simula la gestión de un equipo Mainframe:

* Stakeholders y roles.
* Product backlog.
* Sprint Planning.
* Daily Scrum.
* Riesgos.
* Dependencias.
* Impedimentos.

El Sprint 1 está orient
