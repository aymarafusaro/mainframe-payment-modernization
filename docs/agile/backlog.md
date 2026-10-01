# Backlog del Proyecto

## 1. Objetivo

El backlog contiene las iniciativas, historias de usuario y tareas necesarias para evolucionar el sistema de procesamiento de pagos.

Las prioridades y estimaciones son utilizadas para planificar los Sprints.

## 2. Escala de estimación

Se utilizará Fibonacci:

```text
1 - 2 - 3 - 5 - 8 - 13
```

Los Story Points representan una estimación relativa considerando:

* Complejidad.
* Esfuerzo.
* Incertidumbre.
* Dependencias.

No representan horas exactas de trabajo.

## 3. Épicas

| ID      | Épica               | Descripción                                    | Prioridad |
| ------- | ------------------- | ---------------------------------------------- | --------- |
| EPIC-01 | Validación de pagos | Mejorar las validaciones del procesamiento     | Alta      |
| EPIC-02 | Procesamiento Batch | Evolucionar el procesamiento nocturno          | Alta      |
| EPIC-03 | QA y Calidad        | Mejorar cobertura y validación                 | Alta      |
| EPIC-04 | Soporte             | Mejorar el análisis y resolución de incidentes | Media     |
| EPIC-05 | Release y Cambios   | Estandarizar despliegues y cambios             | Media     |

## 4. Historias de usuario

### PAY-101 — Validación de datos de pago

**Épica:** EPIC-01

**Como** sistema de procesamiento de pagos
**quiero** validar los datos de entrada antes de procesarlos
**para** evitar operaciones inválidas.

**Criterios de aceptación:**

* Los campos obligatorios deben estar presentes.
* Los importes deben contener valores numéricos válidos.
* Los registros inválidos deben ser rechazados.
* Cada rechazo debe informar un código de error.

**Estimación:** 5 Story Points

**Prioridad:** Alta

---

### PAY-102 — Generación de reporte batch

**Épica:** EPIC-02

**Como** equipo de operaciones
**quiero** obtener un reporte del procesamiento batch
**para** conocer los resultados de la ejecución.

**Criterios de aceptación:**

* El reporte debe indicar la fecha de proceso.
* Debe informar la cantidad de registros leídos.
* Debe informar los registros procesados.
* Debe informar los registros rechazados.
* Debe informar los resultados del procesamiento.

**Estimación:** 5 Story Points

**Prioridad:** Alta

---

### PAY-103 — Validación automática del reporte

**Épica:** EPIC-03

**Como** equipo de QA
**quiero** validar automáticamente la estructura del reporte
**para** detectar reportes incompletos.

**Criterios de aceptación:**

* Debe validar el encabezado.
* Debe validar la fecha de proceso.
* Debe validar el límite de procesamiento.
* Debe validar los contadores.
* Debe informar `VALID` o `INVALID`.

**Estimación:** 3 Story Points

**Prioridad:** Alta

---

### PAY-104 — Gestión de incidentes

**Épica:** EPIC-04

**Como** equipo de soporte
**quiero** registrar y clasificar incidentes
**para** realizar seguimiento hasta su resolución.

**Criterios de aceptación:**

* Cada incidente debe tener identificador.
* Debe registrar impacto y prioridad.
* Debe tener responsable.
* Debe registrar causa y resolución.
* Debe permitir identificar incidentes recurrentes.

**Estimación:** 5 Story Points

**Prioridad:** Media

---

### PAY-105 — Procedimiento de despliegue

**Épica:** EPIC-05

**Como** equipo de Release
**quiero** disponer de un procedimiento de despliegue documentado
**para** reducir riesgos durante las implementaciones.

**Criterios de aceptación:**

* Debe existir checklist previo al despliegue.
* Deben estar definidos los pasos de implementación.
* Debe existir un procedimiento de rollback.
* Deben definirse las validaciones posteriores.

**Estimación:** 3 Story Points

**Prioridad:** Media

---

### PAY-106 — Documentación de onboarding

**Épica:** EPIC-04

**Como** nuevo integrante del equipo
**quiero** disponer de documentación del sistema y procesos
**para** poder incorporarme rápidamente al proyecto.

**Criterios de aceptación:**

* Debe existir descripción de la arquitectura.
* Debe existir guía del flujo de desarrollo.
* Debe existir procedimiento de soporte.
* Deben documentarse los incidentes frecuentes.

**Estimación:** 3 Story Points

**Prioridad:** Media

## 5. Resumen del backlog

| ID      | Prioridad | Story Points | Estado  |
| ------- | --------- | -----------: | ------- |
| PAY-101 | Alta      |            5 | Backlog |
| PAY-102 | Alta      |            5 | Backlog |
| PAY-103 | Alta      |            3 | Backlog |
| PAY-104 | Media     |            5 | Backlog |
| PAY-105 | Media     |            3 | Backlog |
| PAY-106 | Media     |            3 | Backlog |

**Total:** 24 Story Points

## 6. Dependencias iniciales

```text
PAY-101
   |
   v
PAY-102
   |
   v
PAY-103

PAY-104
   |
   +----> PAY-106

PAY-105
   |
   +----> Release
```

## 7. Criterio de priorización

La priorización considera:

1. Impacto sobre el procesamiento.
2. Riesgo operativo.
3. Dependencias.
4. Necesidad de negocio.
5. Esfuerzo estimado.

La priorización puede modificarse durante el proyecto según nuevos requerimientos, incidentes o cambios de negocio.
