
use licencias_mpt
go

CREATE TABLE nacionalidad (
	id int primary key identity(1,1),
	nacionalidad varchar(16) not null
)

create TABLE persona (
	id int primary key identity(1,1),
	dni char(8) not null,
	nombres varchar(32) not null,
	ap_paterno varchar(32) not null,
	ap_materno varchar(32) not null,
	fecha_nac date not null,
	direccion varchar(255),
	email varchar(64),
	celular varchar(9),
	photo varchar(255)
		default('https://i.ibb.co/QJpZpTD/197a450c-6b71-4e0f-a9b5-cce5e5ee51dd.jpg'),
	id_nacionalidad int foreign key references Nacionalidad(id)
)
GO

CREATE TABLE administrativo (
	id_persona int foreign key references persona(id) primary key,
	usuario varchar(32) not null,
	contraseña varchar(64) not null
)

CREATE TABLE clase (
	id int primary key identity(1,1),
	clase char(1) not null,
	descripcion varchar(255),
)

CREATE TABLE categoria (
	id int primary key identity(1,1),
	categoria varchar(3) not null,
	descripcion varchar(255) not null,
	id_clase int foreign key references Clase(id) not null
)

CREATE TABLE restriccion (
	id int primary key identity(1,1),
	short_descripcion varchar(64) not null,
	long_descripcion varchar(255)
)

CREATE TABLE tipo_solicitud (
	id int primary key identity(1,1),
	tipo varchar(32) not null
)

create TABLE solicitud (
	id int primary key identity(1,1),
	fecha_registro date
		default GETDATE(),
	estado varchar(16)
		default 'Pendiente',
	id_persona int foreign key references persona(id) not null,
	id_tipo int foreign key references tipo_solicitud(id) not null,
	id_categoria int foreign key references categoria(id) null
)


CREATE TABLE licencia (
	id int foreign key references solicitud(id) primary key,
	numero varchar(16) not null,
	fecha_exp date not null
		default GETDATE(),
	fecha_rev date not null,
		-- check((YEAR(fecha_rev)-YEAR(fecha_exp))>=1),
	id_persona int foreign key references persona(id) not null,
	id_categoria int foreign key references categoria(id) not null,
	estado varchar(16) not null
)

CREATE TABLE detalle_licencia_restriccion (
	id_restriccion int foreign key references restriccion(id) not null,
	id_licencia int foreign key references licencia(id) not null,
	primary key (id_restriccion, id_licencia)
)

CREATE TABLE tipo_requisito (
	id int primary key identity(1,1),
	tipo char(3) not null,
	descripcion varchar(255)
)

CREATE TABLE detalle_solicitud (
	id_solicitud int foreign key references solicitud(id) primary key,
	id_tipo_requisito int foreign key references tipo_requisito(id),
	fecha date,
	lugar varchar(64),
	pathfile varchar(255)
)

CREATE TABLE horario_exr (
	id int primary key identity(1,1),
	turno varchar(16) not null,
	hora int not null
		check(hora>=0 AND hora<=24),
	capacidad int not null
)

CREATE TABLE programacion_exr (
	id_solicitud int foreign key references solicitud(id) not null,
	id_horario_exr int foreign key references horario_exr(id) not null,
	fecha date not null,
	primary key(id_solicitud, id_horario_exr)
)

select * from Categoria
select * from Nacionalidad
select * from restriccion
select * from detalle_solicitud
select * from horario_exr
