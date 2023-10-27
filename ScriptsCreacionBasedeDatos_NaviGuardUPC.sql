create DATABASE NaviGuard_UPC;
go

use NaviGuard_UPC;
go
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-26

-- tables
-- Table: calles
CREATE TABLE calles (
    id_calle int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    nivel_seguridad int  NOT NULL,
    distrito_id int  NOT NULL,
    CONSTRAINT calles_pk PRIMARY KEY  (id_calle)
);

-- Table: centros_seguros
CREATE TABLE centros_seguros (
    id_centro int  NOT NULL,
    nombre Varchar(100)  NOT NULL,
    ubicaciones_id int  NOT NULL,
    CONSTRAINT centros_seguros_pk PRIMARY KEY  (id_centro)
);

-- Table: comentarios_valoraciones
CREATE TABLE comentarios_valoraciones (
    id_comentario int  NOT NULL,
    comentario Varchar(100)  NOT NULL,
    valoracion int  NOT NULL,
    ruta_id int  NOT NULL,
    CONSTRAINT comentarios_valoraciones_pk PRIMARY KEY  (id_comentario)
);

-- Table: compartidas
CREATE TABLE compartidas (
    id_compartida int  NOT NULL,
    enlace_ruta varchar(100)  NOT NULL,
    rutas_id int  NOT NULL,
    fecha date  NOT NULL,
    CONSTRAINT compartidas_pk PRIMARY KEY  (id_compartida)
);

-- Table: contactos
CREATE TABLE contactos (
    id_contacto int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    correo varchar(50)  NOT NULL,
    numero_para_contacto int  NOT NULL,
    CONSTRAINT contactos_pk PRIMARY KEY  (id_contacto)
);

-- Table: contactos_por_usuarios
CREATE TABLE contactos_por_usuarios (
    contactos_id int  NOT NULL,
    usuarios_id int  NOT NULL,
    parentesco varchar(50)  NOT NULL,
    CONSTRAINT contactos_por_usuarios_pk PRIMARY KEY  (usuarios_id,contactos_id)
);

-- Table: denuncias
CREATE TABLE denuncias (
    id_denuncia int  NOT NULL,
    descripcion Varchar(100)  NOT NULL,
    ruta_id int  NOT NULL,
    CONSTRAINT denuncias_pk PRIMARY KEY  (id_denuncia)
);

-- Table: distritos
CREATE TABLE distritos (
    id_distrito int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    ubicaciones_id int  NOT NULL,
    CONSTRAINT distritos_pk PRIMARY KEY  (id_distrito)
);

-- Table: historial_viajes
CREATE TABLE historial_viajes (
    id_historial_viaje int  NOT NULL,
    fecha_hora_inicio time  NOT NULL,
    fecha_hora_fin time  NOT NULL,
    estadistica_seguridad int  NOT NULL,
    ubicacion_inicio Varchar(200)  NOT NULL,
    ubicacion_final Varchar(200)  NOT NULL,
    id_usuario int  NOT NULL,
    CONSTRAINT historial_viajes_pk PRIMARY KEY  (id_historial_viaje)
);

-- Table: horarios
CREATE TABLE horarios (
    id_horario int  NOT NULL,
    hora_apertura time  NOT NULL,
    hora_cierre time  NOT NULL,
    centros_seguros_id int  NOT NULL,
    CONSTRAINT horarios_pk PRIMARY KEY  (id_horario)
);

-- Table: incidencias
CREATE TABLE incidencias (
    id_incidencia int  NOT NULL,
    descripcion varchar(100)  NOT NULL,
    ubicaciones_id int  NOT NULL,
    hora_incidente time  NOT NULL,
    gravedad Varchar(100)  NOT NULL,
    tipo_incidente Varchar(100)  NOT NULL,
    CONSTRAINT incidencias_pk PRIMARY KEY  (id_incidencia)
);

-- Table: preferencias
CREATE TABLE preferencias (
    id_preferencia int  NOT NULL,
    usuarios_id int  NOT NULL,
    descripcion_configuracion varchar(50)  NOT NULL,
    CONSTRAINT preferencias_pk PRIMARY KEY  (id_preferencia)
);

-- Table: rutas
CREATE TABLE rutas (
    id_ruta int  NOT NULL,
    punto_inicio Varchar(100)  NOT NULL,
    punto_final Varchar(100)  NOT NULL,
    distancia int  NOT NULL,
    seguridad_ruta int  NOT NULL,
    id_usuario int  NOT NULL,
    CONSTRAINT rutas_pk PRIMARY KEY  (id_ruta)
);

-- Table: rutas_por_ubicaciones
CREATE TABLE rutas_por_ubicaciones (
    rutas_id int  NOT NULL,
    ubicaciones_id int  NOT NULL,
    CONSTRAINT rutas_por_ubicaciones_pk PRIMARY KEY  (rutas_id,ubicaciones_id)
);

-- Table: ubicaciones
CREATE TABLE ubicaciones (
    id_ubicacion int  NOT NULL,
    seguridad_ubicacion float  NOT NULL,
    CONSTRAINT ubicaciones_pk PRIMARY KEY  (id_ubicacion)
);

-- Table: usuarios
CREATE TABLE usuarios (
    id_usuario int  NOT NULL,
    nombre varchar(100)  NOT NULL,
    correo varchar(100)  NOT NULL,
    tipo varchar(50)  NOT NULL,
    contrasena varchar(50)  NOT NULL,
    CONSTRAINT usuarios_pk PRIMARY KEY  (id_usuario)
);

-- foreign keys
-- Reference: Denuncias_Rutas (table: denuncias)
ALTER TABLE denuncias ADD CONSTRAINT Denuncias_Rutas
    FOREIGN KEY (ruta_id)
    REFERENCES rutas (id_ruta);

-- Reference: Historial_viajes_Usuarios (table: historial_viajes)
ALTER TABLE historial_viajes ADD CONSTRAINT Historial_viajes_Usuarios
    FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario);

-- Reference: Rutas_Usuarios (table: rutas)
ALTER TABLE rutas ADD CONSTRAINT Rutas_Usuarios
    FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario);

-- Reference: Rutas_por_ubicaciones_rutas (table: rutas_por_ubicaciones)
ALTER TABLE rutas_por_ubicaciones ADD CONSTRAINT Rutas_por_ubicaciones_rutas
    FOREIGN KEY (rutas_id)
    REFERENCES rutas (id_ruta);

-- Reference: Rutas_por_ubicaciones_ubicaciones (table: rutas_por_ubicaciones)
ALTER TABLE rutas_por_ubicaciones ADD CONSTRAINT Rutas_por_ubicaciones_ubicaciones
    FOREIGN KEY (ubicaciones_id)
    REFERENCES ubicaciones (id_ubicacion);

-- Reference: calles_Distritos (table: calles)
ALTER TABLE calles ADD CONSTRAINT calles_Distritos
    FOREIGN KEY (distrito_id)
    REFERENCES distritos (id_distrito);

-- Reference: centros_seguros_ubicaciones (table: centros_seguros)
ALTER TABLE centros_seguros ADD CONSTRAINT centros_seguros_ubicaciones
    FOREIGN KEY (ubicaciones_id)
    REFERENCES ubicaciones (id_ubicacion);

-- Reference: comentarios_valoreaciones_rutas (table: comentarios_valoraciones)
ALTER TABLE comentarios_valoraciones ADD CONSTRAINT comentarios_valoreaciones_rutas
    FOREIGN KEY (ruta_id)
    REFERENCES rutas (id_ruta);

-- Reference: compartidas_rutas (table: compartidas)
ALTER TABLE compartidas ADD CONSTRAINT compartidas_rutas
    FOREIGN KEY (rutas_id)
    REFERENCES rutas (id_ruta);

-- Reference: contactos_por_usuarios_contactos (table: contactos_por_usuarios)
ALTER TABLE contactos_por_usuarios ADD CONSTRAINT contactos_por_usuarios_contactos
    FOREIGN KEY (contactos_id)
    REFERENCES contactos (id_contacto);

-- Reference: contactos_por_usuarios_usuarios (table: contactos_por_usuarios)
ALTER TABLE contactos_por_usuarios ADD CONSTRAINT contactos_por_usuarios_usuarios
    FOREIGN KEY (usuarios_id)
    REFERENCES usuarios (id_usuario);

-- Reference: distritos_ubicaciones (table: distritos)
ALTER TABLE distritos ADD CONSTRAINT distritos_ubicaciones
    FOREIGN KEY (ubicaciones_id)
    REFERENCES ubicaciones (id_ubicacion);

-- Reference: horarios_centros_seguros (table: horarios)
ALTER TABLE horarios ADD CONSTRAINT horarios_centros_seguros
    FOREIGN KEY (centros_seguros_id)
    REFERENCES centros_seguros (id_centro);

-- Reference: preferencias_usuarios (table: preferencias)
ALTER TABLE preferencias ADD CONSTRAINT preferencias_usuarios
    FOREIGN KEY (usuarios_id)
    REFERENCES usuarios (id_usuario);

-- Reference: reportes_ubicaciones (table: incidencias)
ALTER TABLE incidencias ADD CONSTRAINT reportes_ubicaciones
    FOREIGN KEY (ubicaciones_id)
    REFERENCES ubicaciones (id_ubicacion);


