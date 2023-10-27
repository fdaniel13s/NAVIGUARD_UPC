--Scripts Inserccion Datos

--Insertar datos en la tabla de usuarios
create procedure  NAVInsertUser
    @id_usuario int,
    @nombre nvarchar(40),
    @correo varchar(100),
    @tipo varchar(100),
    @contrasena varchar(100)
as
begin
    begin try
        begin transaction
            insert into usuarios (id_usuario, nombre,correo, tipo, contrasena)
            values (@id_usuario,@nombre,@correo,@tipo,@contrasena)
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

--Carga de datos (10) en la tabla de usuarios
exec NAVInsertUser @id_usuario=20569245,@nombre=Jorge,@correo=jorge123@ayahoo,@tipo=ciudadano,@contrasena=gejor234
GO

exec NAVInsertUser @id_usuario=10869246,@nombre=Daniel,@correo=jorge123@ayahoo,@tipo=ciudadano,@contrasena=fffjfsejor234
exec NAVInsertUser @id_usuario=25869247,@nombre=Edison,@correo=edison@yahoo,@tipo=ciudadano,@contrasena=gejfffjfsr235
exec NAVInsertUser @id_usuario=30845248,@nombre=Harold,@correo=harold@gmail,@tipo=ciudadano,@contrasena=gejfffjfsr235
exec NAVInsertUser @id_usuario=00004249,@nombre=Mark,@correo=m6123@ayahoo,@tipo=turista,@contrasena=gejor23fffjfs
exec NAVInsertUser @id_usuario=20869250,@nombre=Augusto,@correo=gfd5@ayahoo,@tipo=ciudadano,@contrasena=ejfffjf34
exec NAVInsertUser @id_usuario=20869251,@nombre=Jorge,@correo=gdf23@ayahoo,@tipo=ciudadano,@contrasena=ejofffjfs234
exec NAVInsertUser @id_usuario=00009252,@nombre=Pedro,@correo=vr3@ayahoo,@tipo=turista,@contrasena=gejor234
exec NAVInsertUser @id_usuario=20859253,@nombre=Saul,@correo=ddd3@ayahoo,@tipo=ciudadano,@contrasena=gejor2fffjfs4
exec NAVInsertUser @id_usuario=70869254,@nombre=Ethel,@correo=evc@ayahoo,@tipo=ciudadano,@contrasena=gejor2fffjfs4
exec NAVInsertUser @id_usuario=90869255,@nombre=Carmela,@correo=gfff@ayahoo,@tipo=ciudadano,@contrasena=gejfffjfsr24
go

select *
from usuarios
go

----------------------------------------------------------------------
--Insercción en Tabla Historial_Viajes
create procedure  NAVInsertHistorial
    @id_historial_viaje int,
    @fecha_hora_inicio time,
    @fecha_hora_fin time,
    @id_usuario int,
    @estadistica_seguridad int,
    @ubicacion_inicio varchar(200),
    @ubicacion_final varchar(200)
as
begin
    begin try
        begin transaction
            insert into historial_viajes (id_historial_viaje, fecha_hora_inicio,fecha_hora_fin, estadistica_seguridad, ubicacion_inicio, ubicacion_final,id_usuario )
            values (@id_historial_viaje, @fecha_hora_inicio,@fecha_hora_fin, @estadistica_seguridad, @ubicacion_inicio, @ubicacion_final,@id_usuario )
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

select *
from historial_viajes

select * from usuarios

exec NAVInsertHistorial @id_historial_viaje=1, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='San martin',@id_usuario=20569245
go
exec NAVInsertHistorial @id_historial_viaje=2, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='Monterrico',@id_usuario=10869246
exec NAVInsertHistorial @id_historial_viaje=3, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Miraflores', @ubicacion_final='San martin',@id_usuario=25869247
exec NAVInsertHistorial @id_historial_viaje=4, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='San martin',@id_usuario=30845248
exec NAVInsertHistorial @id_historial_viaje=5, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='Puente Primavera',@id_usuario=00004249
exec NAVInsertHistorial @id_historial_viaje=6, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='San Miguel', @ubicacion_final='San martin',@id_usuario=20869250
exec NAVInsertHistorial @id_historial_viaje=7, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='San martin',@id_usuario=20869251
exec NAVInsertHistorial @id_historial_viaje=8, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='UPC San Miguel',@id_usuario=00009252
exec NAVInsertHistorial @id_historial_viaje=9, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Estadio Nacional', @ubicacion_final='San martin',@id_usuario=20859253
exec NAVInsertHistorial @id_historial_viaje=10, @fecha_hora_inicio= '12:30:00' ,@fecha_hora_fin= '01:00:00', @estadistica_seguridad=56, @ubicacion_inicio='Los olivos', @ubicacion_final='San martin',@id_usuario=70869254
go

-------------------------------------------------------
--Insercción datos en la tabla Ubicación
CREATE procedure  NAVInsertUbicacion
    @id_ubicacion int,
    @seguridad_ubicacion float

as
begin
    begin try
        begin transaction
            insert into ubicaciones (id_ubicacion, seguridad_ubicacion)
            values (@id_ubicacion, @seguridad_ubicacion)
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

exec NAVInsertUbicacion @id_ubicacion=1, @seguridad_ubicacion=55
go
exec NAVInsertUbicacion @id_ubicacion=2, @seguridad_ubicacion=40
exec NAVInsertUbicacion @id_ubicacion=3, @seguridad_ubicacion=60
exec NAVInsertUbicacion @id_ubicacion=4, @seguridad_ubicacion=33
exec NAVInsertUbicacion @id_ubicacion=5, @seguridad_ubicacion=70
exec NAVInsertUbicacion @id_ubicacion=6, @seguridad_ubicacion=80
exec NAVInsertUbicacion @id_ubicacion=7, @seguridad_ubicacion=90
exec NAVInsertUbicacion @id_ubicacion=8, @seguridad_ubicacion=98
exec NAVInsertUbicacion @id_ubicacion=9, @seguridad_ubicacion=20
exec NAVInsertUbicacion @id_ubicacion=10, @seguridad_ubicacion=10
go

select*
from ubicaciones
go
---------------------------------------------------------------------------
--Insercción datos en la tabla Distritos
CREATE procedure  NAVInsertDistrito
    @id_distrito int,
    @nombre varchar(100),
    @ubicaciones_id int

as
begin
    begin try
        begin transaction
            insert into distritos (id_distrito, nombre,ubicaciones_id)
            values (@id_distrito, @nombre, @ubicaciones_id)
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

exec NAVInsertDistrito @id_distrito=1, @nombre='Jesus Maria', @ubicaciones_id=1
go
exec NAVInsertDistrito @id_distrito=2, @nombre='San Miguel', @ubicaciones_id=2
exec NAVInsertDistrito @id_distrito=3, @nombre='Miraflores', @ubicaciones_id=3
exec NAVInsertDistrito @id_distrito=4, @nombre='San Isidro', @ubicaciones_id=3
exec NAVInsertDistrito @id_distrito=5, @nombre='San Borja', @ubicaciones_id=5
exec NAVInsertDistrito @id_distrito=6, @nombre='San Juan de Lurigancho', @ubicaciones_id=6
exec NAVInsertDistrito @id_distrito=7, @nombre='San Juan de Miraflores', @ubicaciones_id=7
exec NAVInsertDistrito @id_distrito=8, @nombre='San Martin de Porres', @ubicaciones_id=8
exec NAVInsertDistrito @id_distrito=9, @nombre='Los Olivos', @ubicaciones_id=9
exec NAVInsertDistrito @id_distrito=10, @nombre='San Luis', @ubicaciones_id=10
go

select *
from distritos
go

--------------------------------------------------
--Insercción datos en la tabla Calles
CREATE procedure  NAVInsertCalles
    @id_calle int,
    @nombre varchar (100),
    @nivel_seguridad int,
    @distrito_id int

as
begin
    begin try
        begin transaction
            insert into calles (id_calle, nombre,nivel_seguridad,distrito_id)
            values (@id_calle, @nombre,@nivel_seguridad,@distrito_id)
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

exec NAVInsertCalles @id_calle=1, @nombre= 'Jiron Huiracocha',@nivel_seguridad= 99,@distrito_id=1
go

exec NAVInsertCalles @id_calle=2, @nombre= 'Calle Los Alamos',@nivel_seguridad= 35,@distrito_id=2
exec NAVInsertCalles @id_calle=3, @nombre= 'Calle Los Pinos',@nivel_seguridad= 45,@distrito_id=3
exec NAVInsertCalles @id_calle=4, @nombre= 'Calle Los Cedros',@nivel_seguridad= 55,@distrito_id=3
exec NAVInsertCalles @id_calle=5, @nombre= 'Calle Los Eucaliptos',@nivel_seguridad= 65,@distrito_id=3
exec NAVInsertCalles @id_calle=6, @nombre= 'Calle Los Pinos',@nivel_seguridad= 75,@distrito_id=6
exec NAVInsertCalles @id_calle=7, @nombre= 'Calle Los Cedros',@nivel_seguridad= 85,@distrito_id=8
exec NAVInsertCalles @id_calle=8, @nombre= 'Calle Los Eucaliptos',@nivel_seguridad= 95,@distrito_id=8
exec NAVInsertCalles @id_calle=9, @nombre= 'Calle Los Pinos',@nivel_seguridad= 15,@distrito_id=8
exec NAVInsertCalles @id_calle=10, @nombre= 'Calle Los Cedros',@nivel_seguridad= 25,@distrito_id=10
go

select *
from calles
go

------------------------------------------------------------------------
--Inserccion datos en la tabla Incidentes
CREATE procedure  NAVInsertIncidencias
    @descripcion varchar(100),
    @ubicacion_id int,
    @hora_incidencia time,
    @gravedad varchar(100),
    @tipo_incidencia varchar(100),
    @id_incidencia int

as
begin
    begin try
        begin transaction
            insert into incidencias (descripcion, ubicaciones_id,hora_incidente, gravedad, tipo_incidente,id_incidencia)
            values (@descripcion, @ubicacion_id,@hora_incidencia, @gravedad, @tipo_incidencia, @id_incidencia)
        commit transaction
        print 'Cliente insertado'
    end try
    begin catch
        print error_message()
        rollback transaction
    end catch
end
go

exec NAVInsertIncidencias @descripcion= 'Incendio que involucra 3 vehiculos', @ubicacion_id=2 ,@hora_incidencia='14:24:00' , @gravedad= 4, @tipo_incidencia= 'Incendio', @id_incidencia='1'
go

exec NAVInsertIncidencias @descripcion= 'Choque de 2 vehiculos', @ubicacion_id=3 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='2'
exec NAVInsertIncidencias @descripcion= 'Deflagracion', @ubicacion_id=4 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='3'
exec NAVInsertIncidencias @descripcion= 'Choque de 2 vehiculos', @ubicacion_id=5 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='4'
exec NAVInsertIncidencias @descripcion= 'Choque de 4 vehiculos', @ubicacion_id=6 ,@hora_incidencia='14:24:00' , @gravedad= 1, @tipo_incidencia= 'Choque', @id_incidencia='5'
exec NAVInsertIncidencias @descripcion= 'Accidente de personas', @ubicacion_id=7 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Accidente', @id_incidencia='6'
exec NAVInsertIncidencias @descripcion= 'Choque de 2 vehiculos', @ubicacion_id=8 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='7'
exec NAVInsertIncidencias @descripcion= 'Operativo', @ubicacion_id=9 ,@hora_incidencia='14:24:00' , @gravedad= 4, @tipo_incidencia= 'Choque', @id_incidencia='8'
exec NAVInsertIncidencias @descripcion= 'Choque de 2 vehiculos', @ubicacion_id=10 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='9'
exec NAVInsertIncidencias @descripcion= 'Despiste', @ubicacion_id=1 ,@hora_incidencia='14:24:00' , @gravedad= 3, @tipo_incidencia= 'Choque', @id_incidencia='10'
go

select *from incidencias
go

------------------------------------------------------------------------
--Inserccion en tabla de Centros_Seguros
CREATE procedure NAVInsertCentrosSeguros
  @id_centro int,
  @nombre varchar(100),
  @ubicaciones_id int
as
begin
  begin try
	begin transaction
	  insert into centros_seguros (id_centro, nombre, ubicaciones_id)
	  values (@id_centro, @nombre, @ubicaciones_id)
	commit transaction
	print 'Centro seguro insertado'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertCentrosSeguros @id_centro = 1, @nombre = 'Seguridad total', @ubicaciones_id = 1
exec NAVInsertCentrosSeguros @id_centro = 2, @nombre = 'Protegete', @ubicaciones_id = 2
exec NAVInsertCentrosSeguros @id_centro = 3, @nombre = 'Seguridad total', @ubicaciones_id = 3
exec NAVInsertCentrosSeguros @id_centro = 4, @nombre = 'Protegete con Miraflores', @ubicaciones_id = 4
exec NAVInsertCentrosSeguros @id_centro = 5, @nombre = 'Seguridad total', @ubicaciones_id = 5
exec NAVInsertCentrosSeguros @id_centro = 6, @nombre = 'Protegete', @ubicaciones_id = 6
exec NAVInsertCentrosSeguros @id_centro = 7, @nombre = 'Seguridad total', @ubicaciones_id = 7
exec NAVInsertCentrosSeguros @id_centro = 8, @nombre = 'Protegete', @ubicaciones_id = 8
exec NAVInsertCentrosSeguros @id_centro = 9, @nombre = 'Seguridad total', @ubicaciones_id = 9
exec NAVInsertCentrosSeguros @id_centro = 10, @nombre = 'Cuidate!', @ubicaciones_id = 10
go

select * from centros_seguros
go
------------------------------------------------------------------------
--Inserccion en tabla Horarios
CREATE procedure NAVInsertHorarios
  @id_horario int, @hora_apertura time, @hora_cierre time, @centros_seguros_id int
as
begin
  begin try
	begin transaction
	  insert into horarios (id_horario, hora_apertura, hora_cierre, centros_seguros_id)
	  values (@id_horario, @hora_apertura, @hora_cierre, @centros_seguros_id)
	commit transaction
	print 'Horario insertado'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertHorarios @id_horario = 1, @hora_apertura = '07:00:01', @hora_cierre = '16:59:59', @centros_seguros_id = 1
go
exec NAVInsertHorarios @id_horario = 2, @hora_apertura = '17:00:00', @hora_cierre = '23:59:59', @centros_seguros_id = 1
exec NAVInsertHorarios @id_horario = 3, @hora_apertura = '00:00:00', @hora_cierre = '06:59:59', @centros_seguros_id = 1
exec NAVInsertHorarios @id_horario = 4, @hora_apertura = '07:00:01', @hora_cierre = '16:59:59', @centros_seguros_id = 2
exec NAVInsertHorarios @id_horario = 5, @hora_apertura = '17:00:00', @hora_cierre = '23:59:59', @centros_seguros_id = 2
exec NAVInsertHorarios @id_horario = 6, @hora_apertura = '00:00:00', @hora_cierre = '06:59:59', @centros_seguros_id = 2
exec NAVInsertHorarios @id_horario = 7, @hora_apertura = '07:00:01', @hora_cierre = '16:59:59', @centros_seguros_id = 3
exec NAVInsertHorarios @id_horario = 8, @hora_apertura = '17:00:00', @hora_cierre = '23:59:59', @centros_seguros_id = 3
exec NAVInsertHorarios @id_horario = 9, @hora_apertura = '00:00:00', @hora_cierre = '06:59:59', @centros_seguros_id = 3
exec NAVInsertHorarios @id_horario = 10, @hora_apertura = '07:00:01', @hora_cierre = '16:59:59', @centros_seguros_id = 4
go

select * from horarios
go

--------------------------------------------------
--Inserccion en tabla de Rutas
CREATE procedure NAVInsertRutas
    @id_ruta int,
    @punto_inicio varchar(100),
    @punto_final varchar(100),
    @distancia int,
    @seguridad_ruta int,
    @id_usuario int
as
begin
  begin try
    begin transaction
      insert into rutas (id_ruta, punto_inicio, punto_final, distancia,seguridad_ruta, id_usuario)
      values (@id_ruta, @punto_inicio, @punto_final, @distancia, @seguridad_ruta, @id_usuario)
    commit transaction
    print 'Ruta insertada'
  end try
  begin catch
    print error_message()
    rollback transaction
  end catch
end
go

exec NAVInsertRutas @id_ruta = 1, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 20569245

exec NAVInsertRutas @id_ruta = 2, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 10869246
exec NAVInsertRutas @id_ruta = 3, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 25869247
exec NAVInsertRutas @id_ruta = 4, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 30845248
exec NAVInsertRutas @id_ruta = 5, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 00004249
exec NAVInsertRutas @id_ruta = 6, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 20869250
exec NAVInsertRutas @id_ruta = 7, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 20869251
exec NAVInsertRutas @id_ruta = 8, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 00009252
exec NAVInsertRutas @id_ruta = 9, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 20859253
exec NAVInsertRutas @id_ruta = 10, @punto_inicio = 'Los Olivos', @punto_final = 'San Miguel', @distancia = 10, @seguridad_ruta = 50, @id_usuario = 70869254
go

select *from rutas
go

----------------------------------------------------
CREATE procedure NAVInsertComentariosValoraciones
  @id_comentario int,
  @comentario varchar(100),
  @valoracion int,
  @ruta_id int
as
begin
  begin try
	begin transaction
	  insert into comentarios_valoraciones (id_comentario, comentario, valoracion, ruta_id)
	  values (@id_comentario, @comentario, @valoracion, @ruta_id)
	commit transaction
	print 'Comentario y valoracion insertados'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertComentariosValoraciones @id_comentario = 1, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 1
exec NAVInsertComentariosValoraciones @id_comentario = 2, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 2
exec NAVInsertComentariosValoraciones @id_comentario = 3, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 3
exec NAVInsertComentariosValoraciones @id_comentario = 4, @comentario = 'Pesima experiencia con la ruta', @valoracion = 1, @ruta_id = 4
exec NAVInsertComentariosValoraciones @id_comentario = 5, @comentario = 'Mala', @valoracion = 1, @ruta_id = 5
exec NAVInsertComentariosValoraciones @id_comentario = 6, @comentario = 'Tranquila...', @valoracion = 3, @ruta_id = 6
exec NAVInsertComentariosValoraciones @id_comentario = 7, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 7
exec NAVInsertComentariosValoraciones @id_comentario = 8, @comentario = ':( Perdi mi celular', @valoracion = 1, @ruta_id = 8
exec NAVInsertComentariosValoraciones @id_comentario = 9, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 9
exec NAVInsertComentariosValoraciones @id_comentario = 10, @comentario = 'Buena ruta :)', @valoracion = 5, @ruta_id = 10
go

select * from comentarios_valoraciones

----------------------------------------------------
--Insertar datos en la tabal de Preferencias
CREATE procedure NAVInsertPreferencias
  @id_preferencia int,
  @usuarios_id int,
  @descripcion_configuracion varchar(50)
as
begin
  begin try
	begin transaction
	  insert into preferencias (id_preferencia, usuarios_id, descripcion_configuracion)
	  values (@id_preferencia, @usuarios_id, @descripcion_configuracion)
	commit transaction
	print 'Preferencias insertado'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertPreferencias @id_preferencia = 1, @usuarios_id = 4249, @descripcion_configuracion = 'Modo Oscuro-On'
exec NAVInsertPreferencias @id_preferencia = 2, @usuarios_id = 20569245, @descripcion_configuracion = 'Modo Oscuro-Off'
exec NAVInsertPreferencias @id_preferencia = 3, @usuarios_id = 4249, @descripcion_configuracion = 'Notificaciones-On'
exec NAVInsertPreferencias @id_preferencia = 4, @usuarios_id = 20569245, @descripcion_configuracion = 'Notificaciones-Off'
exec NAVInsertPreferencias @id_preferencia = 5, @usuarios_id = 4249, @descripcion_configuracion = 'Modo Seguro-On'
exec NAVInsertPreferencias @id_preferencia = 6, @usuarios_id = 20569245, @descripcion_configuracion = 'Modo Seguro-Off'
exec NAVInsertPreferencias @id_preferencia = 7, @usuarios_id = 4249, @descripcion_configuracion = 'Modo Seguro-On'
exec NAVInsertPreferencias @id_preferencia = 8, @usuarios_id = 20869250, @descripcion_configuracion = 'Modo Seguro-Off'
exec NAVInsertPreferencias @id_preferencia = 9, @usuarios_id = 9252, @descripcion_configuracion = 'Modo Seguro-On'
exec NAVInsertPreferencias @id_preferencia = 10, @usuarios_id = 20859253, @descripcion_configuracion = 'Modo Seguro-Off'
go
select * from preferencias

----------------------------------------------------
--Inserccion en tabla Rutas_por_ubicaciones
CREATE procedure NAVInsertRutasPorUbicaciones
    @rutas_id int,
    @ubicaciones_id int
as
begin
  begin try
	begin transaction
	  insert into rutas_por_ubicaciones (rutas_id, ubicaciones_id)
	  values (@rutas_id, @ubicaciones_id)
	commit transaction
	print 'Ruta por ubicacion insertada'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertRutasPorUbicaciones @rutas_id = 1, @ubicaciones_id = 1
exec NAVInsertRutasPorUbicaciones @rutas_id = 2, @ubicaciones_id = 2
exec NAVInsertRutasPorUbicaciones @rutas_id = 3, @ubicaciones_id = 3
exec NAVInsertRutasPorUbicaciones @rutas_id = 4, @ubicaciones_id = 4
exec NAVInsertRutasPorUbicaciones @rutas_id = 5, @ubicaciones_id = 5
exec NAVInsertRutasPorUbicaciones @rutas_id = 6, @ubicaciones_id = 6
exec NAVInsertRutasPorUbicaciones @rutas_id = 7, @ubicaciones_id = 7
exec NAVInsertRutasPorUbicaciones @rutas_id = 8, @ubicaciones_id = 8
exec NAVInsertRutasPorUbicaciones @rutas_id = 9, @ubicaciones_id = 9
exec NAVInsertRutasPorUbicaciones @rutas_id = 10, @ubicaciones_id = 10
select * from rutas_por_ubicaciones
go

------------------------------------------------------
--Inserccion en tabla de Contactos
CREATE procedure NAVInsertContactos
    @id_contacto int,
    @nombre varchar(50),
    @correo varchar(50),
    @numero_para_contacto int
as
begin
  begin try
	begin transaction
	  insert into contactos (id_contacto, nombre, correo, numero_para_contacto)
	  values (@id_contacto, @nombre, @correo, @numero_para_contacto)
	commit transaction
	print 'Contacto insertado'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertContactos @id_contacto = 1, @nombre = 'Sebastian', @correo = 'sebastiansalas5@hotmail.com', @numero_para_contacto = 995412547
exec NAVInsertContactos @id_contacto = 2, @nombre = 'Jorge', @correo = 'jorge@gmail.com', @numero_para_contacto = 999554412
exec NAVInsertContactos @id_contacto = 3, @nombre = 'Daniel', @correo = 'daniel12@gmail.com', @numero_para_contacto = 994544124
exec NAVInsertContactos @id_contacto = 4, @nombre = 'Edison', @correo = 'edicf@hotmial.com', @numero_para_contacto = 995412547
exec NAVInsertContactos @id_contacto = 5, @nombre = 'Harold', @correo = 'fff@gmail.com', @numero_para_contacto = 995412547
exec NAVInsertContactos @id_contacto = 6, @nombre = 'Mark', @correo = '3234f@gmail.com', @numero_para_contacto = 995789547
exec NAVInsertContactos @id_contacto = 7, @nombre = 'Augusto', @correo = 'gfd5@ayahoo', @numero_para_contacto = 995122547
exec NAVInsertContactos @id_contacto = 8, @nombre = 'Jorge', @correo = 'gdf23@ayahoo', @numero_para_contacto = 995359547
exec NAVInsertContactos @id_contacto = 9, @nombre = 'Pedro', @correo = 'vr3@ayahoo', @numero_para_contacto = 995412547
exec NAVInsertContactos @id_contacto = 10, @nombre = 'Saul', @correo = 'ddd3@ayahoo', @numero_para_contacto = 997872547


select * from contactos

------------------------------------------------------
--Inserccion en tabla de Contactos_por_usuarios
CREATE procedure NAVInsertContactosPorUsuarios
    @contactos_id int,
    @usuarios_id int,
    @parentesco varchar(50)
as
begin
  begin try
    begin transaction
      insert into contactos_por_usuarios (contactos_id, usuarios_id, parentesco)
      values (@contactos_id, @usuarios_id, @parentesco)
    commit transaction
    print 'Contacto por usuario insertado'
  end try
  begin catch
    print error_message()
    rollback transaction
  end catch
end
go

exec NAVInsertContactosPorUsuarios @contactos_id = 1, @usuarios_id = 20569245, @parentesco = 'Padre'
exec NAVInsertContactosPorUsuarios @contactos_id = 2, @usuarios_id = 20569245, @parentesco = 'Madre'
exec NAVInsertContactosPorUsuarios @contactos_id = 3, @usuarios_id = 20569245, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 4, @usuarios_id = 20869250, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 5, @usuarios_id = 20869250, @parentesco = 'Hermana'
exec NAVInsertContactosPorUsuarios @contactos_id = 6, @usuarios_id = 20569245, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 7, @usuarios_id = 4249, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 8, @usuarios_id = 4249, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 9, @usuarios_id = 20569245, @parentesco = 'Hermano'
exec NAVInsertContactosPorUsuarios @contactos_id = 10, @usuarios_id = 20569245, @parentesco = 'Hermano'
go

select*from contactos_por_usuarios

------------------------------------------------------
--Inserccion en tablas de Compartidas
CREATE procedure NAVInsertCompartidas
    @id_compartida int,
    @enlace_ruta varchar(100),
    @rutas_id int,
    @fecha date
as
begin
  begin try
    begin transaction
      insert into compartidas (id_compartida, enlace_ruta, rutas_id, fecha)
      values (@id_compartida, @enlace_ruta, @rutas_id, @fecha)
    commit transaction
    print 'Compartida insertada'
  end try
  begin catch
    print error_message()
    rollback transaction
  end catch
end
go

exec NAVInsertCompartidas @id_compartida = 1, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 1, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 2, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 2, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 3, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 3, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 4, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 4, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 5, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 5, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 6, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 6, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 7, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 7, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 8, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 8, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 9, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 9, @fecha = '2020-11-01'
exec NAVInsertCompartidas @id_compartida = 10, @enlace_ruta = 'https://www.google.com/maps/dir/?api=1&origin=Los+Olivos&destination=San+Miguel&travelmode=driving', @rutas_id = 10, @fecha = '2020-11-01'
go

select *from compartidas

------------------------------------------------------
--Inserccion en la tabla de denuncias
CREATE procedure NAVInsertDenuncias
    @id_denuncia int,
    @descripcion varchar(100),
    @ruta_id int
as
begin
  begin try
	begin transaction
	  insert into denuncias (id_denuncia, descripcion, ruta_id)
	  values (@id_denuncia, @descripcion, @ruta_id)
	commit transaction
	print 'Denuncia insertada'
  end try
  begin catch
	print error_message()
	rollback transaction
  end catch
end
go

exec NAVInsertDenuncias @id_denuncia = 1, @descripcion = 'Ruta muy peligrosa', @ruta_id = 1
exec NAVInsertDenuncias @id_denuncia = 2, @descripcion = 'Ruta muy peligrosa, se debería eliminar', @ruta_id = 2
exec NAVInsertDenuncias @id_denuncia = 3, @descripcion = 'Ruta muy peligrosa, sufri robo', @ruta_id = 3
exec NAVInsertDenuncias @id_denuncia = 4, @descripcion = 'Delincuentes!', @ruta_id = 4
exec NAVInsertDenuncias @id_denuncia = 5, @descripcion = 'Ruta muy peligrosa', @ruta_id = 5
exec NAVInsertDenuncias @id_denuncia = 6, @descripcion = 'Ruta muy peligrosa', @ruta_id = 6
exec NAVInsertDenuncias @id_denuncia = 7, @descripcion = 'Ruta muy peligrosa', @ruta_id = 7
exec NAVInsertDenuncias @id_denuncia = 8, @descripcion = 'Deberia ir la policia', @ruta_id = 8
exec NAVInsertDenuncias @id_denuncia = 9, @descripcion = 'Ruta muy peligrosa', @ruta_id = 9
exec NAVInsertDenuncias @id_denuncia = 10, @descripcion = 'Ruta muy peligrosa', @ruta_id = 10
go

select * from denuncias
go

