# Matriz de Riesgos y Dependencias

## 1. Objetivo

Esta matriz permite identificar, evaluar y realizar seguimiento de los principales riesgos y dependencias del proyecto de modernización del sistema de pagos.

El Project Coordinator es responsable de mantener actualizada la información, coordinar acciones preventivas y realizar el seguimiento de los responsables.

---

# 2. Matriz de Riesgos

| ID      | Riesgo                                              | Probabilidad | Impacto | Nivel | Responsable                  | Mitigación                                           | Estado  |
| ------- | --------------------------------------------------- | ------------ | ------- | ----- | ---------------------------- | ---------------------------------------------------- | ------- |
| RSK-001 | Cambios en reglas funcionales durante el desarrollo | Media        | Alto    | Alto  | Functional Analyst           | Validar criterios de aceptación antes del desarrollo | Abierto |
| RSK-002 | Insuficiencia de datos de prueba                    | Media        | Medio   | Medio | QA Analyst                   | Preparar datos de prueba antes de iniciar QA         | Cerrado |
| RSK-003 | Defectos encontrados durante pruebas funcionales    | Media        | Alto    | Alto  | QA Analyst / COBOL Developer | Pruebas unitarias y funcionales                      | Abierto |
| RSK-004 | Demora en la aprobación del cambio                  | Baja         | Alto    | Medio | Product Owner                | Revisar avances y pendientes antes del Sprint Review | Abierto |
| RSK-005 | Error durante el despliegue                         | Baja         | Alto    | Medio | DevOps / Release             | Checklist y procedimiento de deployment              | Abierto |

---

# 3. Seguimiento de Riesgos

## RSK-001 — Cambios en reglas funcionales

**Descripción:**

Existe la posibilidad de que el negocio solicite modificaciones sobre las reglas de validación durante el desarrollo.

**Impacto potencial:**

Podría generar retrabajo y afectar la planificación del Sprint.

**Acción preventiva:**

El Functional Analyst debe confirmar los criterios de aceptación antes de que Desarrollo complete la implementación.

**Estado:** Abierto.

---

## RSK-002 — Insuficiencia de datos de prueba

**Descripción:**

El equipo inicialmente no disponía de todos los registros necesarios para ejecutar los escenarios definidos para PAY-101.

**Impacto:**

Podía retrasar la ejecución de las pruebas funcionales.

**Acción realizada:**

Se coordinaron las tareas entre Functional Analyst, QA y COBOL Developer para generar los datos faltantes.

**Estado:** Cerrado.

**Relación:** IMP-001.

---

## RSK-003 — Defectos durante QA

**Descripción:**

Las pruebas funcionales podrían detectar defectos que requieran modificaciones en el programa COBOL.

**Impacto potencial:**

Retrabajo y posible modificación de la planificación.

**Acción preventiva:**

Realizar pruebas unitarias antes de entregar la funcionalidad a QA y mantener comunicación directa entre QA y Desarrollo.

**Estado:** Abierto.

---

# 4. Matriz de Dependencias

| ID      | Dependencia                                        | Origen          | Impacto | Responsable         | Estado         |
| ------- | -------------------------------------------------- | --------------- | ------- | ------------------- | -------------- |
| DEP-001 | PAY-102 depende de PAY-101                         | Desarrollo      | Alto    | COBOL Developer     | En seguimiento |
| DEP-002 | PAY-103 depende del reporte generado por PAY-102   | Desarrollo / QA | Alto    | QA Analyst          | Pendiente      |
| DEP-003 | QA depende de la disponibilidad de datos de prueba | QA              | Medio   | Project Coordinator | Resuelto       |
| DEP-004 | Deployment depende de la aprobación del cambio     | Release         | Alto    | DevOps / Release    | Pendiente      |
| DEP-005 | Release depende de la validación final de QA       | QA / Release    | Alto    | QA Analyst          | Pendiente      |

---

# 5. Acciones del Project Coordinator

El Project Coordinator realizará las siguientes actividades:

* Revisar riesgos durante los Daily Scrum.
* Actualizar el estado de riesgos y dependencias.
* Coordinar responsables y fechas objetivo.
* Identificar posibles bloqueos antes de que afecten el Sprint.
* Escalar riesgos de alto impacto cuando sea necesario.
* Mantener informado al Product Owner.
* Verificar el cierre de riesgos y dependencias.
* Incorporar los principales riesgos al seguimiento de Sprint.

---

# 6. Criterios de seguimiento

Un riesgo deberá ser revisado cuando:

* aumente su probabilidad;
* aumente su impacto;
* afecte una historia comprometida;
* genere una nueva dependencia;
* pueda afectar una fecha de entrega;
* requiera intervención de otro equipo.

Una dependencia deberá actualizarse cuando:

* sea identificada;
* cambie su responsable;
* sea bloqueante;
* sea resuelta;
* genere impacto sobre otra tarea o historia.

---

# 7. Estado actual

Al finalizar el seguimiento inicial del Sprint 1:

* **Riesgos identificados:** 5
* **Riesgos abiertos:** 4
* **Riesgos cerrados:** 1
* **Dependencias identificadas:** 5
* **Dependencias resueltas:** 1
* **Impedimentos abiertos:** 0
* **Impedimentos cerrados:** 1

El principal impedimento identificado durante el Sprint, relacionado con los datos de prueba, fue resuelto sin afectar el objetivo comprometido.
