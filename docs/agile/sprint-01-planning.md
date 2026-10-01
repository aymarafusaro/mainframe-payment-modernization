# Sprint 01 — Planning

## 1. Información del Sprint

| Campo              | Valor                                                           |
| ------------------ | --------------------------------------------------------------- |
| Sprint             | Sprint 01                                                       |
| Duración           | 2 semanas                                                       |
| Objetivo           | Mejorar la validación y trazabilidad del procesamiento de pagos |
| Capacidad estimada | 13 Story Points                                                 |
| Metodología        | Scrum                                                           |

## 2. Sprint Goal

> Implementar y validar las principales mejoras del procesamiento de pagos, asegurando que los registros inválidos sean identificados correctamente y que el resultado del procesamiento pueda ser validado.

## 3. Historias seleccionadas

| ID      | Historia                          | Story Points | Prioridad |
| ------- | --------------------------------- | -----------: | --------- |
| PAY-101 | Validación de datos de pago       |            5 | Alta      |
| PAY-102 | Generación de reporte batch       |            5 | Alta      |
| PAY-103 | Validación automática del reporte |            3 | Alta      |
|         | **Total**                         |       **13** |           |

## 4. Justificación de la selección

Las tres historias están relacionadas entre sí y forman un flujo funcional completo:

```text
Entrada
   |
   v
PAY-101
Validación
   |
   v
PAY-102
Procesamiento + Reporte
   |
   v
PAY-103
Validación del Reporte
```

Esto permite entregar una funcionalidad completa al finalizar el Sprint.

## 5. Descomposición de tareas

### PAY-101 — Validación de datos de pago

| Tarea                         | Responsable        | Estimación |
| ----------------------------- | ------------------ | ---------: |
| Analizar reglas de validación | Functional Analyst |    0.5 día |
| Modificar programa COBOL      | COBOL Developer    |   1.5 días |
| Preparar datos de prueba      | QA Analyst         |    0.5 día |
| Ejecutar pruebas unitarias    | COBOL Developer    |    0.5 día |
| Ejecutar pruebas funcionales  | QA Analyst         |      1 día |

### PAY-102 — Generación de reporte batch

| Tarea                              | Responsable        | Estimación |
| ---------------------------------- | ------------------ | ---------: |
| Definir estructura del reporte     | Functional Analyst |    0.5 día |
| Implementar generación del reporte | COBOL Developer    |      1 día |
| Validar datos generados            | QA Analyst         |    0.5 día |
| Documentar formato                 | Functional Analyst |    0.5 día |

### PAY-103 — Validación automática del reporte

| Tarea                                  | Responsable     | Estimación |
| -------------------------------------- | --------------- | ---------: |
| Definir reglas de validación           | QA Analyst      |    0.5 día |
| Implementar REPORT-CHECK               | COBOL Developer |      1 día |
| Crear escenarios positivos y negativos | QA Analyst      |    0.5 día |
| Ejecutar pruebas                       | QA Analyst      |    0.5 día |

## 6. Dependencias

Las principales dependencias identificadas son:

```text
PAY-101
   |
   v
PAY-102
   |
   v
PAY-103
```

PAY-102 depende de que las reglas de validación de PAY-101 estén definidas.

PAY-103 depende de que PAY-102 genere el reporte que será validado.

## 7. Riesgos identificados

| Riesgo                            | Impacto | Acción                                   |
| --------------------------------- | ------- | ---------------------------------------- |
| Cambios en las reglas funcionales | Alto    | Confirmar criterios antes del desarrollo |
| Datos de prueba insuficientes     | Medio   | Preparar casos positivos y negativos     |
| Defectos encontrados durante QA   | Medio   | Reservar capacidad para correcciones     |
| Dependencias entre historias      | Medio   | Seguimiento durante Daily Scrum          |

## 8. Definición de Done

Una historia se considera terminada cuando:

* El desarrollo está completado.
* El código fue revisado.
* Las pruebas unitarias fueron ejecutadas.
* Las pruebas funcionales fueron ejecutadas.
* Los defectos críticos fueron resueltos.
* La documentación correspondiente fue actualizada.
* El resultado fue validado por QA.
* El Product Owner aceptó la historia.

## 9. Capacidad y seguimiento

La capacidad planificada para el Sprint es de 13 Story Points.

El seguimiento se realizará diariamente mediante Daily Scrum.

Se controlarán:

* Historias completadas.
* Historias en progreso.
* Historias bloqueadas.
* Defectos.
* Dependencias.
* Riesgos.
* Impedimentos.

## 10. Responsabilidad del Project Coordinator

Durante el Sprint, el Project Coordinator será responsable de:

* Facilitar el seguimiento diario.
* Identificar impedimentos.
* Coordinar dependencias.
* Dar seguimiento a compromisos.
* Mantener informado al Product Owner.
* Coordinar actividades entre Desarrollo y QA.
* Escalar bloqueos cuando sea necesario.
* Preparar el Sprint Review.
* Facilitar la Retrospective.

## 11. Resultado esperado

Al finalizar el Sprint se espera contar con:

* Validación de datos implementada.
* Reporte batch generado.
* Validación automática del reporte.
* Casos de prueba ejecutados.
* Defectos registrados y tratados.
* Documentación actualizada.
