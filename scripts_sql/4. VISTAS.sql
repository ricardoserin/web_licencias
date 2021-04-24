--Vista para leer todas las solicitudes
alter view view_solicitudes 
as
	select
		s.id as idSolicitud,
		p.id as idPersona,
		year(s.fecha_registro) as Anio,
		s.fecha_registro as FechaSolicitud,
		p.dni as DNI,
		CONCAT(p.ap_paterno, ' ' , p.ap_materno,' ',p.nombres) as Persona,
		p.celular as Celular,
		ts.tipo as Tipo,
		s.estado as Estado,
		(select COUNT(id_solicitud) from programacion_exr where id_solicitud=s.id) as examen
	from solicitud s
		inner join persona p on p.id = s.id_persona
		inner join tipo_solicitud ts on s.id_tipo = ts.id
go

select * from view_solicitudes

select * from solicitud

create view view_anios
as
	select YEAR(fecha_registro) as Anio from Solicitud group by YEAR(fecha_registro)
go

select * from view_anios

select * from view_solicitudes f where f.Anio='2021'

select * sp_solicitudes s where s.estado='ACEPTADA'

select * from detalle_solicitud

select * from tipo_requisito