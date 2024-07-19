# Proyecto SQL: Gestión de Clientes y Proyectos

Este proyecto SQL incluye un conjunto de tablas diseñadas para gestionar la información de clientes, proyectos, hitos asociados a los proyectos, información bancaria de los clientes, y la asignación de desarrolladores a proyectos. A continuación se proporciona una descripción de las tablas y su estructura.

## Estructura de las Tablas

### Cliente

Guarda la información de los clientes.

- `id`: Clave primaria, autoincremental.
- `nombre`: Nombre del cliente, no puede ser nulo.
- `nit`: NIT del cliente, debe ser único.
- `telefonoContacto`: Número de teléfono de contacto del cliente.

### Proyecto

Almacena información sobre los proyectos asignados a los clientes.

- `id`: Clave primaria, autoincremental.
- `nombre`: Nombre del proyecto.
- `tipo`: Tipo de proyecto.
- `costo`: Costo del proyecto.
- `precio`: Precio de venta del proyecto.
- `fechaInicio`: Fecha de inicio del proyecto.
- `fechaFin`: Fecha de finalización del proyecto.
- `clienteId`: Referencia a la tabla `Cliente`.

### Hito

Contiene información sobre los hitos importantes dentro de un proyecto.

- `id`: Clave primaria, autoincremental.
- `nombre`: Nombre del hito.
- `fecha`: Fecha del hito.
- `porcentajeAvance`: Porcentaje de avance alcanzado en el hito.
- `proyectoId`: Referencia a la tabla `Proyecto`.

### InfoBancaria

Detalles bancarios asociados a un cliente específico.

- `id`: Clave primaria, autoincremental.
- `plazoFacturacion`: Plazo para la facturación.
- `plazoPago`: Plazo para el pago.
- `clienteId`: Clave foránea única que referencia a `Cliente`.

### Desarrollador

Mantiene la información de los desarrolladores.

- `id`: Clave primaria, autoincremental.
- `nombre`: Nombre del desarrollador.
- `correo`: Correo electrónico del desarrollador, debe ser único.
- `identificacion`: Identificación del desarrollador, debe ser única.

### ProyectoDesarrollador

Relación muchos a muchos entre proyectos y desarrolladores.

- `proyectoId`: Clave foránea que referencia a `Proyecto`.
- `desarrolladorId`: Clave foránea que referencia a `Desarrollador`.
- Clave primaria compuesta por `proyectoId` y `desarrolladorId`.

## Cómo Empezar

Para comenzar a utilizar esta base de datos, primero deberás ejecutar los scripts SQL proporcionados para crear las tablas mencionadas arriba. Asegúrate de tener instalado un sistema de gestión de bases de datos que soporte SQL (como PostgreSQL, MySQL, etc.).

## Próximos Pasos

En futuras actualizaciones, se agregarán scripts para la inserción de datos, consultas para extraer información específica y posiblemente triggers o procedimientos almacenados para automatizar tareas comunes.
