# Stakeholders del Proyecto

## 1. Objetivo

Identificar los principales stakeholders involucrados en el proyecto de modernización del procesamiento de pagos y establecer su nivel de participación, interés y responsabilidad.

## 2. Stakeholders

| Stakeholder          | Rol                                        | Interés    | Participación |
| -------------------- | ------------------------------------------ | ---------- | ------------- |
| Product Owner        | Define prioridades y requerimientos        | Alto       | Alta          |
| Project Coordinator  | Coordina el proyecto y realiza seguimiento | Alto       | Alta          |
| Functional Analyst   | Analiza requerimientos e impacto funcional | Alto       | Alta          |
| COBOL Developer      | Desarrolla y mantiene la solución          | Alto       | Alta          |
| QA Analyst           | Valida la solución                         | Alto       | Alta          |
| Mainframe Support    | Soporta la solución productiva             | Alto       | Media/Alta    |
| DevOps / Release     | Coordina despliegues y cambios             | Medio/Alto | Media/Alta    |
| Business Stakeholder | Representa las necesidades del negocio     | Alto       | Media         |
| Usuarios internos    | Utilizan los resultados del sistema        | Medio      | Baja/Media    |

## 3. Clasificación

### Alta influencia / Alto interés

* Product Owner
* Project Coordinator
* Functional Analyst

Estos stakeholders participan activamente en la planificación, priorización y seguimiento del proyecto.

### Alta influencia / Interés medio

* Business Stakeholder
* DevOps / Release

Se mantienen involucrados especialmente durante decisiones de negocio, releases y cambios productivos.

### Interés alto / Influencia operativa

* COBOL Developer
* QA Analyst
* Mainframe Support

Participan directamente en el desarrollo, validación y soporte de la solución.

### Interés medio / Influencia baja

* Usuarios internos

Su participación se concentra principalmente en la utilización y validación de los resultados de la solución.

## 4. Estrategia de comunicación

| Stakeholder          | Comunicación                         | Frecuencia           |
| -------------------- | ------------------------------------ | -------------------- |
| Product Owner        | Seguimiento de backlog y prioridades | Semanal / Sprint     |
| Equipo técnico       | Daily Scrum                          | Diaria               |
| QA                   | Seguimiento de testing y defectos    | Diaria durante QA    |
| Mainframe Support    | Incidentes y cambios                 | Según necesidad      |
| DevOps / Release     | Coordinación de despliegues          | Por release          |
| Business Stakeholder | Estado y resultados                  | Por Sprint / Release |

## 5. Responsabilidad del Project Coordinator

El Project Coordinator facilita la comunicación entre los distintos grupos y realiza seguimiento de:

* Acuerdos.
* Dependencias.
* Riesgos.
* Impedimentos.
* Compromisos.
* Fechas.
* Cambios de alcance.
* Estado de los releases.

El objetivo es asegurar que la información relevante llegue al stakeholder correspondiente y que los bloqueos sean identificados y gestionados oportunamente.

## 6. Flujo de comunicación

```text
                    BUSINESS
                       |
                       v
                PRODUCT OWNER
                       |
                       v
              PROJECT COORDINATOR
                 /     |      \
                /      |       \
               v       v        v
             BA      DEV       QA
                       |
                       v
                 MAINFRAME
                  SUPPORT
                       |
                       v
                DEVOPS / RELEASE
```
