USE licencias_mpt
GO

create function f_consultar_disponibilidad 
(
	@id_horario int, @fecha date
)
returns int
as
begin
	declare @reservas int
	declare @vacantes int
	declare @disponibilidad int
	select @reservas = count(id_solicitud)
	from programacion_exr 
	where id_horario_exr=@id_horario and fecha=@fecha
	select @vacantes = capacidad from horario_exr where id = @id_horario
	set @disponibilidad = @vacantes - @reservas
	return @disponibilidad
end
go

print dbo.f_consultar_disponibilidad(2,'26-04-2021')

