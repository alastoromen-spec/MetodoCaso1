🎯 Objetivo General

Construir tres bases de datos completamente funcionales, documentadas y justificadas, aplicando principios profesionales de diseño de bases de datos.
Los métodos de caso abarcan:

PyME del sector retail (Unidad 1)

Convocatoria y administración de torneo de dominó (Unidad 2)

Sistema de Gestión de Historia Clínica Electrónica – HCE (Unidad 6)

Cada caso aborda problemáticas distintas para desarrollar competencias en modelado, DDL, DML, optimización, integridad y gobernanza de datos.

🧩 Resumen Técnico de los Métodos de Caso
📌 Método Caso U1 – PyME en Comercio Detallista

En este caso se diseña una base de datos para gestionar productos, clientes y ventas, cumpliendo con las reglas de negocio, la integridad referencial y la normalización requerida.
Se desarrollan:

MER y DER del sistema

Tablas normalizadas

Control de stock

Medidas de protección de datos del cliente

Transparencia del historial de precios

Scripts DDL y consultas de prueba

📌 Método Caso U2 – Convocatoria Torneo de Dominó

Se implementa una solución para el registro, confirmación y control de inscripciones a un torneo.
Incluye:

MER con cardinalidades apropiadas

Uso de NULL y NOT NULL en integridad

Vistas para mejorar la eficiencia en consultas

Procedimientos almacenados y funciones

Índices agrupados y no agrupados según escenarios

Scripts DDL, vistas, SP, funciones

📌 Método Caso U6 – Sistema de Gestión de Historia Clínica Electrónica (HCE)

Caso orientado a la administración de datos clínicos en SQL Server, con énfasis en consultas optimizadas.
Incluye:

Modelado de pacientes, consultas y resultados

Implementación de DDL, DML, vistas y SP

Uso de JOINs complejos para análisis clínico

Índices para acelerar búsquedas clínicas

Consideraciones de seguridad de datos sensibles

Buenas prácticas para consultas agregadas

🛠️ Tecnologías Utilizadas
Tecnología	Uso
SQL Server Express 2019	Motor de base de datos
T-SQL	Lenguaje de definición y manipulación
Git / GitHub	Control de versiones y documentación
Modelado ER (texto y gráfico)	Diseño conceptual
📂 Cómo Está Organizado el Código

Cada carpeta contiene:

DDL.sql: creación de tablas, PK, FK, restricciones

DML.sql: carga inicial de datos

Consultas.sql: consultas, joins, filtros, agregaciones

Vistas.sql: vistas materializadas o lógicas

Procedimientos.sql: SP para automatizaciones

Funciones.sql: UDF para cálculos específicos

📦 Distribución de la Base de Datos mediante Archivo .BAK

Este repositorio incluye un archivo .BAK generado desde SQL Server Management Studio (SSMS) con el objetivo de facilitar la restauración completa de la base de datos utilizada en los métodos de caso.
Este enfoque permite que cualquier usuario obtenga una copia idéntica de la base de datos, incluyendo:

Estructura completa (tablas, PK, FK, restricciones)

Datos cargados

Vistas

Procedimientos almacenados

Funciones

Índices

Configuración interna del motor
🧰 Instrucciones para restaurar la base de datos en SQL Server (SSMS)

Sigue estos pasos para restaurar la base de datos desde el archivo .bak:

1️⃣ Copiar el archivo .BAK a la máquina local

Descarga el archivo .bak desde el repositorio.

Colócalo en una ubicación accesible por SQL Server, por ejemplo:

C:\SQLBackups\


💡 Se recomienda evitar carpetas del sistema como Escritorio o Documentos, ya que pueden tener restricciones de permisos.

2️⃣ Restaurar la base de datos en SSMS

Abrir SQL Server Management Studio (SSMS).

Conectarse al motor de bases de datos.

En el Explorador de Objetos, clic derecho en Databases → Restore Database.

Seleccionar Device → Add…

Buscar el archivo .bak copiado anteriormente.

Seleccionar el nombre de la base de datos destino (opcionalmente renombrarla).

En la pestaña Files, verificar las rutas de los archivos .mdf y .ldf.

Hacer clic en OK para iniciar la restauración.

🔒 Buenas Prácticas Implementadas

Nombres consistentes en tablas/campos

Normalización hasta 3FN

PK y FK explícitas

Uso de CHECK, UNIQUE y DEFAULT donde corresponde

Separación de código por responsabilidades (DDL/DML)

Comentarios en bloque y línea

Scripts idempotentes cuando es posible

Evitar SELECT * y funciones escalar no indexadas

Manejo cuidadoso de NULL

Prioridad a la seguridad en el caso HCE (datos sensibles)

📄 Documentación Incluida

El archivo principal del semestre es:

📘 Documento_Metodos_Caso.docx
Incluye:

Portada

Explicación de cada caso

MER textual

Respuestas a preguntas teóricas

Estructura estándar para todos los métodos

🤝 Contribuciones

Las contribuciones están abiertas.
Si deseas mejorar SQL, agregar ejemplos o extender documentación:

Haz un fork

Crea una rama

Envía un pull request

📜 Licencia

Este repositorio utiliza la licencia MIT, lo que permite su uso académico y profesional manteniendo créditos correspondientes.
