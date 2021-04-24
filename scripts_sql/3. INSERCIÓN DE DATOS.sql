SET LANGUAGE Español
set dateformat dmy

--TABLA NACIONALIDAD
insert into nacionalidad values ('Peruana')

--TABLA CLASE
insert into clase values (
	'B', 
	'Licencia para triciclos, bicimotos, motos, mototaxis y trimotos para uso personal o comercial que trasladen pasajeros o mercancías.'
)

--TABLA CATEGORÍA
insert into categoria values 
(
	'I',
	'Vehículos no motorizados de 3 ruedas (triciclos) para transporte público especial de pasajeros.',
	1
),
(
	'IIa',
	'Bicimotos para transportar pasajeros o mercancías',
	1
),
(
	'IIb',
	'Los mismos que B-IIa y también Motocicletas (2 ruedas) o Motocicletas con Sidecar (3 ruedas) para transportar pasajeros o mercancías',
	1
),
(
	'IIc',
	'Los mismos que B-IIa y B-IIb y también Mototaxis y Trimotos (3 ruedas) destinadas al transporte de pasajeros',
	1
)

--TABLA RESTRICCION
insert into restriccion values 
('SIN RESTRICCIONES', 'Sin restricciones'),
('USO LENTES', 'Con lentes correctores externos o de contacto'),
('USO AUDÍFONOS', 'Con audífonos')

-- TABLA TIPO SOLICITUD
insert into tipo_solicitud values  
('NUEVA LICENCIA'), 
('DUPLICADO'), 
('REVALIDACIÓN')

--TABLA HORARIO_EXR
insert into horario_exr values 
('Mañana', 10, 10),
('Tarde', 15, 10)

--TABLA PERSONA
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('46061352', 'CARLOS DAVID','ABANTO','ROSARIO','04-04-1980','BARRIO 6A Alto Trujillo','carlosar@gmail.com',968154784,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIocGBg672sKSiviEf5o6ty-hGaafPS6eEPQ&usqp=CAU' ,1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('15748126', 'MIGUEL ANGEL','AZABACHE','CASTILLO','15-10-1992','Rinconada - Calle Falsa','miguelac@gmail.com',925748147,
'http://directorio.concytec.gob.pe/appDirectorioCTI/UploadFotoPath.do?tipo=visualizar_archivo&id_investigador=74212&ruta=/documents/docInvestigadores/74212/imagenes/javier%20buendia%20con%20terno.jpg', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('45192578', 'ROBERT ORLAND','RODRIGUEZ','ALFARO','01-10-1974','Calle Sinchi Roca','robertra@gmail.com',968412574,
'https://ubiobio.cl/admision/subidas/carreras/28/Patricio_Chandia_ciencias.jpg', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('46153574', 'JOSE FELIX','TRUJILLO ','ALVA','02-12-1995','Pumacahua 115 - El Porvenir','joseta@gmail.com',935021412,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp6wCaKvN1kK2oN67w2kR7FbKey_PVRasi09Ieb1P92uetXFeWkadlI0LE-GeCi1L9eNA&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('41451545', 'JUANA','ANTICONA','ARIAS','13-07-1989','Pasaje Atahualpa 152 - Palermo','juanaaa@gmail.com','968154784',
'https://horizontejoven.com/site/wp-content/uploads/2020/02/istockphoto-856479974-612x612-1.jpg',1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('12457895', 'ANA JOSEFINA','ESQUIVEL','ARENAS','15-02-1992','Avenida España 401','anaea@gmail.com',912547512,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNyALtuBbhZtmXacqk3tdkgH_dldqNN7-TOIStxk9w2faqNPnSS4b-f77WTpHwp02g0yo&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('35967415', 'SANTIAGO ANDRES','RUIZ','ARMAS','04-08-1974','Avenida Perú 111','santiagora@gmail.com',934510201,
'https://lh5.googleusercontent.com/-Z3HMI_DH6Pk/Ul5TzEaSuOI/AAAAAAABx80/b_i8oRTlcMY/97423573.jpg', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('45968521', 'SANTOS CHIN','CALDERON','ALVARADO','17-10-1988','Túpac Amaru 105','santosca@gmail.com',987415201,
'https://upload.wikimedia.org/wikipedia/commons/2/2d/Foto_carnet_Angel_Sevilla.png', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('42157631', 'TITO RUBEN','ACUÑA','ZAMORA','06-11-1973','José Olaya 555','titoaz@gmail.com',987415632,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCqdun-cwQfWos1Wuas7_cxwAKdVJbbgq8oBdXI0YbQ5fPDbr_hlPCdNkDPk5MGo3P_ko&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('92168742', 'TEODORO','CONDOR ','ACOSTA','19-01-1982','Avenida Mansiche 487','rosasca@gmail.com',921546874,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4cBrsmZiV9rv5tjPgmCZ7u-94WrugLVZKFt9HiLiS4YwwqyZomt9xiO_ngT-t8TQbiTo&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('31624578', 'WALTER DICK','CRUZ','ALVA','10-10-1991','Antenor Orrego 104','walterca@gmail.com',930154785,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSl-qOHxSIfq8lUmcboHo5GCjASAD1Cku0EfI_FoI4-Pz7CX--8dD0x9Nffalo8JPx5zc&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('32015470', 'OMAR POO','ACUÑA ','ALVARADO','10-01-1969','Las Malvinas 004','omaraa@gmail.com',920154874,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4yRiPx0waPCiewJoscvOHfBeBLgwrSgTj2nLgq0vEkkOC7gQTHJYhEc8pn4PLnmnXQmw&usqp=CAU', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('95147802', 'JUAN','URBANO ','AQUINO','02-08-1971','América Norte 187','juanua@gmail.com',930216741,
'http://www.enfoca2.com.mx/wp-content/uploads/2018/pasaporte/Fotografia%20para%20Pasaporte%2001.jpg', 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('32014568', 'CARLOS ALBERTO','TANTALEAN ','ADRIANZEN','11-11-1989','América Sur 1021','carlosta@gmail.com',900014578,
'http://www.enfoca2.com.mx/wp-content/uploads/2018/pasaporte/Fotografia%20para%20Pasaporte%2004.jpg' , 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('96148752', 'ALEJANDRO CESAR','BEJARANO','ASCON','19-10-1985','Juan Pablo 123','alejandroba@gmail.com',936014587,
'https://blog.danielberlanga.es/wp-content/uploads/2010/11/MG_9189-393x590.jpg', 1);

--administrativos						  '		   '
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, photo, id_nacionalidad) VALUES 
('72942722', 'ELMER RICARDO','SERIN','NERY','14-02-1997','Av Ricardo Palma 1236','serin.ricardo@gmail.com',912854762,
'https://i.ibb.co/4Tyjx1n/1-2.jpg', 1);
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('74860819', 'JOSÉ ALONSO','LLAVE','VERGARAY','16-09-1996','AVENIDA ESPAÑA 401','joselv@gmail.com',974266754, 1);
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('75666656', 'JEYSON ADAHILTON','ZAVALETA','CORTEZ','02-07-1997','Antenor Orrego Mz L9 - El Porvenir','jeysonzc@gmail.com',936059241, 1);														
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70091844', 'ALEXANDRA YESABELLA','GUERRA','AVALOS','05-10-1996','AVENIDA LAS CAÑAS 666','alexandraga@gmail.com',912854762, 1);
INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('72495387', 'MANUEL JUAN JESUS','SILVA','GUEVARA','24-12-1995','PEDRO MUÑIS 102','manuelsg@gmail.com',912854762, 1);
insert into administrativo values (16, 'eserinn', '72942722')
insert into administrativo values (17, 'jllavev', '74860619')
insert into administrativo values (18, 'jzavaletac', '75666654')
insert into administrativo values (19, 'aguerraa', '70091844')
insert into administrativo values (20, 'msilvag', '72495387')
--/administrativos

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('78951451', 'MARIO ALONSO','AGUIRRE','PEREYRA','27-12-1997','AVENIDA MANUEL VERA ENRIQUEZ 514','marioap@gmail.com',921478541, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('72456897', 'DAVIS JUAN','ÁLVAREZ','TORRES','23-10-1982','AVENIDA SALVADOR LARA 101','davidat@gmail.com',954723654, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('73569854', 'LUCÍA MARÍA','BENITEZ','MEDINA','01-02-1997','AVENIDA MIRAFLORES 555','luciabm@gmail.com',935241851, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('75632789', 'HUGO JORGE','FLORES','ACOSTA','10-05-1994','AVENIDA SANTA 100','hugofs@gmail.com',948521467, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('79653248', 'DANIEL MARIO','GARCÍA','SÁNCHEZ','06-02-1997','CIRO ALEGRÍA 144','danielgs@gmail.com',935264111, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('75489632', 'ALBA JUNIOR','GÓMEZ','FERNÁNDEZ','07-10-1992','AVENIDA MANSICHE 007','albagf@gmail.com',945244551, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('75896412', 'ADRIAN CARLOS','GONZALES','RODRIGUEZ','05-08-1995','AVENIDA PEDRO MUÑIZ 157','adriangr@gmail.com',920014120, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('73215486', 'MARTIN ELMER','GUTIERREZ','MOLINA','04-02-1997','AVENIDA ANTENOR ORREGO 120','martingm@gmail.com',901452178, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('71114524', 'SARA LUNA','JUÁREZ','CABRERA','01-01-1997','AVENIDA LARCO 222','sarajc@gmail.com',954812635, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('76689541', 'CARLA LUANA','LÓPEZ','DÍAS','03-02-1997','AVENIDA 28 DE JULIO 120','carlald@gmail.com',921548524, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70025441', 'CLAUDIA SOFIA','MARTÍNEZ','PÉREZ','09-10-1993','SINCHI ROCA 303','claudiamp@gmail.com',941562784, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('71024575', 'VALERIA JUANA','MORALES','DOMINGUEZ','17-11-1989','JOSÉ GALVEZ 111','valeriamd@gmail.com',912578463, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('73200545', 'PAULA SARA','NUÑEZ','LUNA','05-03-1991','AVENIDA JOSÉ MARÍA EGUREN 101','paulanl@gmail.com',964852147, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('72724875', 'SOFÍA FRANCHESCA','RÍOS','GODOY','09-01-1990','AVENIDA SANTA 084','sofiarg@gmail.com',964875351, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('75554212', 'PABLO PEDRO','PICAPIEDRA','MARMOL','17-06-1994','PROLONGACIÓN HUALLAGA 116','pablopm@gmail.com',984572146, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70002154', 'SOLEDAD MARTINA','AMORÓS','GARCÍA','04-06-1990','AVENIDA FEDERICO VILLAREAL 445','soledadag@gmail.com',936521478, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('71235642', 'DANIEL PABLO','ANDELA','LÓPEZ','10-10-1997','AVENIDA CAMINO REAL 17','danielal@gmail.com',954687193, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('71234584', 'JOSÉ ELIASIB','DORADO','RUIZ','12-04-1993','LAS TUNAS 12 - LA RINCONADA','josedr@gmail.com',921456284, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('73332551', 'NATALIO JORGE','ARQUÉS','LÓPEZ','01-12-1995','LOS TOPACIOS 14 - LA RINCONADA','natalioal@gmail.com',954163525, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('71200587', 'ESTHER JUANA','BARAHONA','GUTIERREZ','05-11-1992','LOS CEDROS 10 - LA RINCONADA','estherbg@gmail.com',951475369, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70356452', 'LUIS JUAN','RIOS','CASIANO','06-08-1994','MATEO REMIGIO SILVA 54 - EL PORVENIR','luisrc@gmail.com',981265749, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70585545', 'PABLO MARTIN','CANO','LOPEZ','10-03-1993','JOSÉ OLAYA 65 - EL PORVENIR','pablocl@gmail.com',987452010, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('63654874', 'ARTURO DEYVI','CARRASCO','PEREZ','01-07-1985','GABRIEL AGUILAR 74 - EL PORVENIR','arturocp@gmail.com',982122546, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('70021497', 'AURORA LUISA','CORTÁZAR','LUQUE','10-12-1990','JOSÉ CRESPO Y CASTILLO 10 - EL PORVENIR','auroracl@gmail.com',963200401, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('72735485', 'ALFONSO JUAN','CUEVA','GARRIDO','12-02-1997','MIGUEL ANGEL 95 - LA NORIA','alfonsocg@gmail.com',987456124, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('45879752', 'PEDRO LUIS','CASTILLO','NERY','10-07-1990','AVENIDA ROMA 159','pedrocn@gmail.com',978495621, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('48167482', 'BENITO CUCHO','ENCINAS','LÓPEZ','02-02-1992','AVENIDA JESÚS DE NAZARETH 46','benitoel@gmail.com',936000514, 1);

INSERT INTO persona (dni, nombres, ap_paterno, ap_materno, fecha_nac, direccion, email, celular, id_nacionalidad) VALUES 
('73454684', 'SAMUEL JACKSON','ARCE','GALLARDO','10-12-1995','AVENIDA AMÉRICA OESTE 136','samuelag@gmail.com',902541648, 1);

--TABLA TIPO REQUISITO
insert into tipo_requisito values
('exm', 'Examen médico (expedido por Colegio médico) y examen físico (psico-somático)'),
('pag', 'Pago por derecho de Licencia y trámite (38.00)'),
('rdi', 'Record de infracciones del interesado (Sótano SATT o web)'),
('ftc', 'Foto tamaño carné'),
('dni', 'DNI Scaneo simple'),
('lvc', 'Licencia vencida scaneada'),
('dpl', 'Denuncia policial (requisito para duplicado)')

--LICENCIAS Y SOLICITUDES
insert into solicitud values
	('20-04-2011','Aprobado', 1, 1, 3), --Persona 1	--1
	('24-04-2016','Aprobado', 1, 3, 3),				--2
	('18-04-2021','Aprobado', 1, 3, 3),				--3
	('01-01-2010','Rechazado', 2, 1, 3), --Persona 2--4
	('12-09-2011','Rechazado', 3, 1, 3), --Persona 3--5
	('24-02-2012','Aprobado', 3, 1, 3),				--6
	('28-02-2016','Aprobado', 3, 3, 3),				--7
	('24-04-2021','Pendiente', 3, 3, 3),			--8
	('08-03-2021','Aprobado', 4, 1, 3), --Persona 4	--9
	('01-02-2016','Aprobado', 5, 1, 3), --Persona 5	--10
	('21-06-2016','Aprobado', 5, 2, 3),				--11
	('04-03-2021','Aprobado', 5, 3, 3),				--12
	('03-04-2021','Aprobado', 6, 1, 3), --Persona 6	--13
	('02-09-2009','Rechazado', 7, 1, 3), --Persona 7	--14
	('05-03-2016','Aprobado', 8, 1, 3), --Persona 8	--15
	('24-04-2021','Pendiente', 8, 3, 3),			--16
	('15-04-2021','Aprobado', 9, 1, 3), --Persona 9	--17
	('03-01-2021','Aprobado', 10, 1, 3), --Persona 10	--18
	('24-04-2021','Pendiente', 11, 1, 3), --Persona 11	--19
	('28-02-2001','Aprobado', 12, 1, 3), --Persona 12	--20
	('24-02-2006','Aprobado', 12, 3, 3),			--21
	('05-03-2011','Aprobado', 12, 3, 3),			--22
	('11-03-2016','Aprobado', 12, 3, 3),			--23
	('24-04-2021','Pendiente', 12, 3, 3),			--24
	('28-02-1990','Aprobado', 13, 1, 3), --Persona 13	--25
	('24-02-1995','Aprobado', 13, 3, 3),			--26
	('05-03-2000','Aprobado', 13, 3, 3),			--27
	('25-09-2003','Aprobado', 13, 2, 3),			--28
	('11-03-2005','Aprobado', 13, 3, 3),			--29
	('06-03-2010','Aprobado', 13, 3, 3),			--30
	('11-03-2015','Aprobado', 13, 3, 3),			--31
	('02-03-2020','Aprobado', 13, 3, 3),			--32
	('28-07-1992','Aprobado', 14, 1, 3), --Persona 14	--33
	('24-07-1997','Aprobado', 14, 3, 3),			--34
	('05-08-2002','Aprobado', 14, 3, 3),			--35
	('25-07-2009','Aprobado', 14, 1, 3),			--36
	('11-08-2014','Aprobado', 14, 3, 3),			--37
	('06-02-2016','Aprobado', 14, 2, 3),			--38
	('11-08-2019','Aprobado', 14, 3, 3),			--39
	('24-04-2021','Pendiente', 14, 2, 3),			--40
	('20-04-2016', 'Aprobado', 16, 1, 3),			--41
	('24-04-2021', 'Pendiente', 16, 3, 3),			--42
	('24-04-2021', 'Pendiente', 18, 1, 3),			--43
	('24-04-2021', 'Pendiente', 20, 1, 3),			--44
	('24-04-2021', 'Pendiente', 21, 1, 3),			--45
	('24-04-2021', 'Pendiente', 22, 1, 3),			--46
	('24-04-2021', 'Pendiente', 23, 1, 3),			--47
	('24-04-2021', 'Pendiente', 24, 1, 3),			--48
	('24-04-2021', 'Pendiente', 25, 1, 3),			--49
	('24-04-2021', 'Pendiente', 26, 1, 3),			--50
	('24-04-2021', 'Pendiente', 27, 1, 3),			--51
	('24-04-2021', 'Pendiente', 28, 3, 3),			--52
	('24-04-2021', 'Pendiente', 29, 1, 3),			--53
	('24-04-2021', 'Pendiente', 30, 1, 3),			--54
	('24-04-2021', 'Pendiente', 31, 1, 3),			--55
	('24-04-2021', 'Pendiente', 32, 1, 3),			--56
	('24-04-2021', 'Pendiente', 33, 1, 3),			--57
	('24-04-2021', 'Pendiente', 34, 1, 3),			--58
	('24-04-2021', 'Pendiente', 35, 1, 3),			--59
	('24-04-2021', 'Pendiente', 36, 1, 3),			--60
	('24-04-2021', 'Pendiente', 37, 1, 3),			--61
	('24-04-2021', 'Pendiente', 38, 1, 3),			--62
	('24-04-2021', 'Pendiente', 39, 1, 3),			--63
	('24-04-2021', 'Pendiente', 40, 1, 3),			--64
	('24-04-2021', 'Pendiente', 41, 1, 3),			--65
	('24-04-2021', 'Pendiente', 42, 1, 3),			--66
	('24-04-2021', 'Pendiente', 43, 1, 3),			--67
	('24-04-2021', 'Pendiente', 44, 1, 3)			--68

insert into licencia values
	(1, 'D46061352','25-04-2011','25-04-2016',1,3,'VENCIDA'), --Persona 1
	(2, 'D46061352','25-04-2016','25-04-2021',1,3,'VENCIDA'),
	(3, 'D46061352','25-04-2021','25-04-2026',1,3,'VIGENTE'),
	(6, 'D45192578','27-02-2011','27-02-2016',3,3,'VENCIDA'), --Persona 3
	(7, 'D45192578','02-03-2016','02-03-2021',3,3,'VENCIDA'),
	(9, 'D46153574','12-03-2021','12-03-2026',4,3,'VIGENTE'), --Persona 4
	(10, 'D41451545','05-02-2016','05-02-2021',5,3,'VENCIDA'), --Persona 5
	(12, 'D41451545','06-03-2021','06-03-2026',5,3,'VIGENTE'),
	(13,'D12457895','09-04-2021','09-04-2026',6,3,'VIGENTE'), --Persona 6
	(15, 'D45968521','12-03-2016','12-03-2021',8,3,'VENCIDA'), --Persona 8
	(17, 'D42157631','20-04-2021','20-04-2026',9,3,'VIGENTE'), --Persona 9
	(18, 'D92168742','04-01-2021','04-01-2026',10,3,'VIGENTE'), --Persona 10
	(19, 'D31624578','27-03-2021','27-03-2026',11,3,'VIGENTE'), --Persona 11
	(20, 'D32015470','04-03-2001','04-03-2006',12,3,'VENCIDA'), --Persona 12
	(21, 'D32015470','28-02-2006','28-02-2011',12,3,'VENCIDA'),
	(22, 'D32015470','08-03-2011','08-03-2016',12,3,'VENCIDA'),
	(23, 'D32015470','14-03-2016','14-03-2021',12,3,'VENCIDA'),
	(25, 'D95147802','03-03-1990','03-03-1995',13,3,'VENCIDA'), --Persona 13
	(26, 'D95147802','28-02-1995','03-02-2000',13,3,'VENCIDA'),
	(27, 'D95147802','08-03-2000','08-03-2005',13,3,'VENCIDA'),
	(29, 'D95147802','15-03-2005','08-03-2010',13,3,'VENCIDA'),
	(30, 'D95147802','11-03-2010','08-03-2015',13,3,'VENCIDA'),
	(31, 'D95147802','15-03-2015','08-03-2020',13,3,'VENCIDA'),
	(32, 'D95147802','08-03-2020','08-03-2025',13,3,'VIGENTE'),
	(33, 'D95147802','03-08-1992','03-08-1997',14,3,'VENCIDA'), --Persona 14
	(34, 'D95147802','28-07-1997','03-08-2002',14,3,'VENCIDA'),
	(35, 'D95147802','08-08-2002','08-08-2007',14,3,'VENCIDA'),
	(36, 'D95147802','29-07-2009','29-07-2014',14,3,'VENCIDA'),
	(37, 'D95147802','13-08-2014','13-08-2019',14,3,'VENCIDA'),
	(39, 'D95147802','13-08-2019','13-08-2024',14,3,'VIGENTE'),
	(41, 'D72942722','20-04-2016','20-04-2021',16,3,'VENCIDA')
	




select * from persona
select * from administrativo
select * from licencia
select * from solicitud where estado='Pendiente'
select * from tipo_solicitud
select * from categoria

select * from programacion_exr
select * from horario_exr

insert into programacion_exr values
	(42, 1, '26-04-2021'), --mañana
	(43, 1, '26-04-2021'),
	(44, 1, '26-04-2021'),
	(45, 1, '26-04-2021'),
	(46, 1, '26-04-2021'),
	(47, 1, '26-04-2021'),
	(48, 1, '26-04-2021'),
	(49, 1, '26-04-2021'),
	(50, 1, '26-04-2021'),
	(51, 2, '26-04-2021'), --tarde
	(52, 2, '26-04-2021'),
	(53, 2, '26-04-2021'),
	(54, 2, '26-04-2021'),
	(55, 2, '26-04-2021'),
	(56, 2, '26-04-2021'),
	(57, 2, '26-04-2021'),
	(58, 2, '26-04-2021'),
	(59, 2, '26-04-2021')
