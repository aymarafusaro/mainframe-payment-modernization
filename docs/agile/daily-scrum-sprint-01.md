# Daily Scrum — Sprint 01

## Información general

* **Sprint:** 01
* **Duración:** 2 semanas
* **Objetivo del Sprint:** Mejorar la validación y trazabilidad del procesamiento de pagos.
* **Ceremonia:** Daily Scrum
* **Día:** Día 3 del Sprint
* **Facilitador:** Project Coordinator

---

## Objetivo del Daily

Realizar seguimiento del avance de las historias comprometidas, identificar impedimentos y coordinar las acciones necesarias para evitar desvíos del Sprint.

---

## Seguimiento por rol

### Project Coordinator

* Seguimiento general del Sprint.
* Coordinación entre Desarrollo y QA.
* Revisión de dependencias.
* Identificación y seguimiento de impedimentos.
* Comunicación de riesgos al Product Owner.

### COBOL Developer

**Ayer:**

* Completó el desarrollo inicial de PAY-101.
* Implementó las validaciones básicas de los registros de pago.

**Hoy:**

* Finalizar pruebas unitarias.
* Preparar datos para pruebas funcionales.

**Bloqueos:**

* Algunos escenarios de prueba requieren registros con datos inválidos que todavía no están disponibles.

### QA Analyst

**Ayer:**

* Revisó los criterios de aceptación de PAY-101.
* Preparó los casos de prueba iniciales.

**Hoy:**

* Continuar con la preparación de pruebas funcionales.
* Validar los casos positivos y negativos.

**Bloqueos:**

* Dependencia de los datos de prueba para ejecutar todos los escenarios.

### Functional Analyst

**Ayer:**

* Revisó las reglas funcionales de validación.
* Confirmó los principales escenarios de negocio.

**Hoy:**

* Aclarar el comportamiento esperado para los registros con importe inválido.

**Bloqueos:**

* Ninguno.

### Mainframe Support

**Ayer:**

* Revisó el flujo actual de procesamiento batch.

**Hoy:**

* Validar el formato esperado de los archivos de entrada y salida.

**Bloqueos:**

* Ninguno.

---

## Impedimento identificado

**ID:** IMP-001

**Descripción:**

El equipo no dispone todavía de un conjunto completo de datos de prueba para validar todos los escenarios definidos para PAY-101.

Los casos faltantes corresponden principalmente a registros inválidos y situaciones límite.

**Impacto:**

La falta de datos puede retrasar las pruebas funcionales y afectar la validación de la historia PAY-101.

**Severidad:** Media

**Responsable de seguimiento:** Project Coordinator

---

## Acción de resolución

El Project Coordinator coordinará con el Functional Analyst y QA Analyst la definición de los datos faltantes.

El COBOL Developer preparará los archivos de entrada necesarios una vez confirmadas las reglas funcionales.

### Plan de acción

1. Functional Analyst identifica los escenarios faltantes.
2. QA Analyst documenta los casos de prueba asociados.
3. COBOL Developer prepara los registros de prueba.
4. QA ejecuta las pruebas.
5. Project Coordinator verifica el cierre del impedimento.

**Fecha objetivo:** Día 4 del Sprint.

**Estado:** Abierto.

---

## Dependencias

* PAY-101 debe quedar validada antes de avanzar completamente con PAY-102.
* Los datos de prueba son necesarios para completar la validación funcional.
* La definición funcional debe estar confirmada antes de generar todos los escenarios negativos.

---

## Seguimiento del Project Coordinator

El impedimento queda registrado como IMP-001.

Se realizará seguimiento en el próximo Daily Scrum para verificar:

* disponibilidad de los datos de prueba;
* avance de QA;
* impacto sobre PAY-101;
* necesidad de escalar el impedimento al Product Owner.

---

## Resultado esperado

Resolver IMP-001 sin modificar el alcance ni la capacidad comprometida del Sprint.

Una vez disponibles los datos, QA podrá completar las pruebas de PAY-101 y el equipo podrá continuar con PAY-102.

---

## Seguimiento — Día 4 del Sprint

### Estado del impedimento IMP-001

**Estado anterior:** Abierto

**Situación:**

El Functional Analyst confirmó los escenarios de prueba faltantes y QA completó la definición de los casos asociados.

El COBOL Developer preparó los registros necesarios para cubrir los escenarios positivos, negativos y de límite.

QA recibió los datos de prueba y comenzó la ejecución de los casos correspondientes.

**Impacto sobre el Sprint:**

No se produjo desvío sobre el objetivo del Sprint.

PAY-101 continúa dentro de la planificación prevista.

### Acciones realizadas

* Functional Analyst confirmó las reglas funcionales.
* QA documentó los escenarios faltantes.
* COBOL Developer preparó los datos de prueba.
* QA inició la ejecución de las pruebas.
* Project Coordinator realizó seguimiento de la dependencia.

### Estado actualizado

**IMP-001: Resuelto**

**Responsable del cierre:** Project Coordinator

**Fecha de cierre:** Día 4 del Sprint

**Resultado:** Los datos de prueba necesarios quedaron disponibles y QA pudo continuar con la validación de PAY-101.
