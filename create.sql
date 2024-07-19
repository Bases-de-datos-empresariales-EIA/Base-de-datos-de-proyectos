create table "Cliente"(
id serial primary key,
nombre text not null,
nit text unique,
"telefonoContacto" text
);

create table "Proyecto"(
id serial primary key,
nombre text,
tipo text,
costo float,
precio float,
"fechaInicio" date,
"fechaFin" date,
"clienteId" int,
foreign key ("clienteId") references "Cliente"(id)
)

create table "Hito"(
id serial primary key,
nombre text,
fecha date,
"porcentajeAvance" float,
"proyectoId" int,
foreign key ("proyectoId") references "Proyecto"(id)
)

create table "InfoBancaria"(
id serial primary key,
plazoFacturacion int,
plazoPago int,
"clienteId" int unique,
foreign key ("clienteId") references "Cliente"(id)
)

create table "Desarrollador"(
id serial primary key,
nombre text,
correo text not null unique,
identificacion text not null unique
)


create table "ProyectoDesarrollador"(
"proyectoId" int,
"desarrolladorId" int,
primary key ("proyectoId", "desarrolladorId"),
foreign key ("proyectoId") references "Proyecto"(id),
foreign key ("desarrolladorId") references "Desarrollador"(id)
)