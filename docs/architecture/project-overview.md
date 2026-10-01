# Proyecto de Modernización del Procesamiento de Pagos

## 1. Contexto

Banco Río Digital cuenta con un sistema Mainframe utilizado para el procesamiento de operaciones de pago.

La solución combina procesos Online y Batch y utiliza COBOL como principal lenguaje de procesamiento.

El sistema requiere una serie de mejoras orientadas a:

* Optimizar el procesamiento batch.
* Mejorar las validaciones de datos.
* Fortalecer el manejo de errores.
* Mejorar la generación de reportes.
* Facilitar las tareas de soporte y mantenimiento.
* Estandarizar los procesos de despliegue y gestión de cambios.

## 2. Objetivo

El objetivo del proyecto es evolucionar el procesamiento de pagos manteniendo la estabilidad de la solución existente y mejorando progresivamente sus procesos de desarrollo, testing, soporte y despliegue.

El proyecto seguirá una metodología Agile y estará organizado en iteraciones.

## 3. Alcance inicial

El proyecto contempla:

* Análisis de requerimientos.
* Mantenimiento y evolución de programas COBOL.
* Actualización de procesos Batch y JCL.
* Validación de archivos de entrada y salida.
* Pruebas funcionales y de regresión.
* Gestión de incidentes y defectos.
* Coordinación de despliegues.
* Gestión de cambios.
* Documentación técnica y funcional.
* Seguimiento de riesgos, dependencias e impedimentos.
* Generación de métricas de seguimiento.

## 4. Arquitectura conceptual

```text
                   CANALES DE PAGO
                         |
                         v
                  CICS / COBOL
                         |
                         v
                        DB2
                         |
                         v
                PROCESAMIENTO BATCH
                         |
              +----------+----------+
              |                     |
              v                     v
       REPORTE DE PAGOS       ARCHIVO DE ERRORES
              |
              v
        VALIDACIÓN DE REPORTE
```

## 5. Metodología de trabajo

El proyecto utiliza un enfoque Agile basado en iteraciones.

Las principales ceremonias serán:

* Sprint Planning
* Daily Scrum
* Sprint Review
* Sprint Retrospective

El seguimiento del trabajo contempla:

* Backlog.
* Historias de usuario.
* Tareas técnicas.
* Defectos.
* Dependencias.
* Riesgos.
* Impedimentos.
* Releases.

## 6. Roles del proyecto

### Project Coordinator

Responsable de:

* Coordinar al equipo.
* Facilitar las ceremonias Agile.
* Realizar seguimiento del avance.
* Identificar riesgos e impedimentos.
* Coordinar dependencias.
* Acompañar despliegues y cambios.
* Promover la mejora continua.
* Generar reportes de seguimiento.

### Product Owner

Responsable de:

* Definir prioridades.
* Gestionar requerimientos.
* Validar resultados funcionales.
* Representar las necesidades del negocio.

### Functional Analyst

Responsable de:

* Analizar requerimientos.
* Elaborar especificaciones funcionales.
* Identificar impactos.
* Coordinar aclaraciones funcionales.

### COBOL Developer

Responsable de:

* Desarrollo y mantenimiento COBOL.
* Modificación de procesos Batch.
* Desarrollo de JCL.
* Análisis de errores.
* Pruebas unitarias.

### QA Analyst

Responsable de:

* Diseñar casos de prueba.
* Ejecutar pruebas funcionales.
* Ejecutar pruebas de regresión.
* Registrar defectos.
* Validar correcciones.

### Mainframe Support

Responsable de:

* Monitoreo de procesos.
* Análisis de incidentes.
* Soporte productivo.
* Seguimiento de problemas recurrentes.

### DevOps / Release

Responsable de:

* Preparación de despliegues.
* Gestión de versiones.
* Coordinación de cambios.
* Ejecución de procedimientos de implementación y rollback.

### Business Stakeholder

Responsable de proporcionar necesidades y validar que las soluciones desarrolladas respondan a los objetivos del negocio.

## 7. Responsabilidad de coordinación

El Project Coordinator actúa como punto de coordinación entre los equipos técnicos, funcionales y de negocio.

El seguimiento se realizará mediante:

* Estado de las historias.
* Avance del Sprint.
* Riesgos.
* Dependencias.
* Impedimentos.
* Defectos.
* Incidentes.
* Estado de los releases.
* Métricas del proyecto.

## 8. Resultado esperado

El proyecto busca demostrar un flujo completo de trabajo que abarque:

```text
Requerimiento
     |
     v
Planificación
     |
     v
Desarrollo
     |
     v
QA
     |
     v
Gestión de cambios
     |
     v
Despliegue
     |
     v
Soporte
     |
     v
Métricas
     |
     v
Mejora continua
```
