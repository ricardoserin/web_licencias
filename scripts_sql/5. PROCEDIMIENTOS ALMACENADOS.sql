USE licencias_mpt
go

--CONSULTA DE LICENCIA
create PROCEDURE sp_consulta_licencia
	@parametro varchar(10)
as
begin
	select top 1
	l.id as idLicencia,
	p.dni as dni,
	l.numero as numero,
	p.nombres as nombres,
	p.ap_paterno as apPaterno,
	p.ap_materno as apMaterno,
	l.fecha_exp as fechaExp,
	l.fecha_rev as fechaRev,
	l.estado as estado,
	cls.clase as clase,
	cat.categoria as categoria,
	p.photo as photo
	from licencia l 
		inner join persona p on l.id_persona = p.id
		inner join categoria cat on l.id_categoria = cat.id
		inner join clase cls on cat.id_clase = cls.id
	where dni=@parametro or numero = @parametro
	order by l.fecha_exp desc
end
go

exec sp_consulta_licencia '46061352'
go

--PROGRAMAR EXAMEN DE REGLAS
CREATE procedure sp_programar_examen
	@id_solicitud int,
	@fecha_siguiente date = NULL
as
begin
	declare @fecha date
	declare @id_horario int
	declare @status bit
	set @status = 0
	SET @fecha = COALESCE(@fecha_siguiente, DATEADD(DAY,1,CONVERT(date, SYSDATETIME())));
	declare @vacantes int
	declare c_horario CURSOR for 
		select id from horario_exr
	open c_horario
	fetch c_horario into @id_horario
	
	while @@fetch_status = 0 
		begin
			set @vacantes = dbo.f_consultar_disponibilidad(@id_horario, @fecha)
			print @vacantes
			if @vacantes > 0 and @status=0
				begin
					insert into programacion_exr values (@id_solicitud, @id_horario, @fecha)
					set @status=1
					fetch c_horario into @id_horario
				end
			else
				--return
				fetch c_horario into @id_horario
		end
	close c_horario
	deallocate c_horario
	if @status = 0
		begin
			set @fecha = DATEADD(DAY,1,@fecha)
			exec sp_programar_examen @id_solicitud, @fecha
		end
end
GO
--exec sp_programar_examen 13