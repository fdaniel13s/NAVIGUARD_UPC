db.comentarios_y_valoraciones.insertMany([
  {
    comentario: "Esta ruta es excelente, sin problemas durante todo el trayecto.",
    valoracion: 9,
    ruta_id: ObjectId("655eb36c33a240ce5bdeb8f0")
  },
  {
    comentario: "Necesita mejorar la señalización en algunos puntos, pero en general es segura.",
    valoracion: 7,
    ruta_id: ObjectId("655eb36c33a240ce5bdeb8f1")
  },
  {
    comentario: "La ruta tiene bonitos paisajes, pero hay zonas un poco inseguras.",
    valoracion: 8,
    ruta_id: ObjectId("655eb36c33a240ce5bdeb8f2")
  },
  {
    comentario: "Buena ruta para evitar tráfico, pero podría haber más iluminación en la noche.",
    valoracion: 6,
    ruta_id: ObjectId("655eb36c33a240ce5bdeb8f3")
  },
  {
    comentario: "Ruta rápida y segura, la recomiendo para desplazarse en la ciudad.",
    valoracion: 9,
    ruta_id: ObjectId("655eb36c33a240ce5bdeb8f4")
  }
]);

db.usuarios.insertOne({
    nombre: 'Camila López',
    correo: 'camila.lopez@gmail.com',
    tipo: 'Usuario Regular',
    contraseña: 'clavecamila',
    historial_viajes: [
        {
            fecha_hora_inicio: '2023-10-26T10:30:00',
            fecha_hora_fin: '2023-10-26T12:00:00',
            estadistica_seguridad: 88,
            ubicacion_inicial: 'Miraflores, Lima',
            ubicacion_final: 'San Isidro, Lima'
        },
        {
            fecha_hora_inicio: '2023-10-25T15:00:00',
            fecha_hora_fin: '2023-10-25T16:30:00',
            estadistica_seguridad: 75,
            ubicacion_inicial: 'San Borja, Lima',
            ubicacion_final: 'Surco, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-26T08:00:00',
            fecha_hora_fin: '2023-10-26T09:30:00',
            estadistica_seguridad: 92,
            ubicacion_inicial: 'La Molina, Lima',
            ubicacion_final: 'Ate, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-26T14:45:00',
            fecha_hora_fin: '2023-10-26T16:15:00',
            estadistica_seguridad: 80,
            ubicacion_inicial: 'Barranco, Lima',
            ubicacion_final: 'Chorrillos, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-25T19:30:00',
            fecha_hora_fin: '2023-10-25T21:00:00',
            estadistica_seguridad: 85,
            ubicacion_inicial: 'San Miguel, Lima',
            ubicacion_final: 'Jesús María, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-25T19:30:00',
            fecha_hora_fin: '2023-10-25T21:00:00',
            estadistica_seguridad: 85,
            ubicacion_inicial: 'San Miguel, Lima',
            ubicacion_final: 'Jesús María, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-26T17:30:00',
            fecha_hora_fin: '2023-10-26T19:00:00',
            estadistica_seguridad: 78,
            ubicacion_inicial: 'Surquillo, Lima',
            ubicacion_final: 'San Borja, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-23T18:45:00',
            fecha_hora_fin: '2023-10-23T20:15:00',
            estadistica_seguridad: 82,
            ubicacion_inicial: 'San Isidro, Lima',
            ubicacion_final: 'Barranco, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-24T15:20:00',
            fecha_hora_fin: '2023-10-24T16:50:00',
            estadistica_seguridad: 75,
            ubicacion_inicial: 'San Juan de Lurigancho, Lima',
            ubicacion_final: 'El Agustino, Lima'
        },

        {
            fecha_hora_inicio: '2023-10-25T10:30:00',
            fecha_hora_fin: '2023-10-25T12:00:00',
            estadistica_seguridad: 88,
            ubicacion_inicial: 'Lince, Lima',
            ubicacion_final: 'Pueblo Libre, Lima'
        },


        {
            fecha_hora_inicio: '2023-10-01T08:00:00',
            fecha_hora_fin: '2023-10-01T09:30:00',
            estadistica_seguridad: 92,
            ubicacion_inicial: 'Barranco, Lima',
            ubicacion_final: 'Chorrillos, Lima'
        }
    ],
    contactos: {
        nombre: 'Sofía Herrera',
        numero: 997654321,
        parentesco: 'Amigo',
        correo: 'sofia.herrera@gmail.com'
    },
    preferencias: {
        descripcion: 'Evitar rutas con mucho tráfico'
    }
})

db.centros_seguros.insertMany([
    {
        nombre: 'Centro1',
        ubicaciones_id: ObjectId('655ea43f33a240ce5bdeb8d1'),
        hora_apertura: { hora: 7, minutos: 0 },
        hora_cierre: { hora: 19, minutos: 20 }
    },
    {
        nombre: 'Centro2',
        ubicaciones_id: ObjectId('655ea43f33a240ce5bdeb8d2'),
        hora_apertura: { hora: 8, minutos: 30 },
        hora_cierre: { hora: 20, minutos: 0 }
    },
    {
        nombre: 'Centro3',
        ubicaciones_id: ObjectId('655ea43f33a240ce5bdeb8d3'),
        hora_apertura: { hora: 9, minutos: 0 },
        hora_cierre: { hora: 21, minutos: 0 }
    },
    {
        nombre: 'Centro4',
        ubicaciones_id: ObjectId('655ea43f33a240ce5bdeb8d4'),
        hora_apertura: { hora: 10, minutos: 0 },
        hora_cierre: { hora: 22, minutos: 0 }
    },
    {
        nombre: 'Centro5',
        ubicaciones_id: ObjectId('655ea43f33a240ce5bdeb8d5'),
        hora_apertura: { hora: 11, minutos: 0 },
        hora_cierre: { hora: 23, minutos: 0 }
    }
]);

db.rutas.insertOne({
    punto_inicio: 'Miraflores',
    punto_final: 'San Isidro',
    distancia: 10,
    seguridad_ruta: 8,
    ubicacion: ObjectId('6553ea26bfe8586315871283'),

    denuncias: {
        descripcion: 'Atentado contra mi integridad',
        usuario_id: ObjectId('6553ea26bfe8586315871284'),
    },

    compartidas: {
        cantidad_compartidas: 5,
        fecha: new Date(),
        enlace: 'https://ejemplo.com/',
    },

    usuario: ObjectId('9853ea26bfe8586315871284'),

});

db.Ubicaciones.insertOne({


    Seguridad_Ubicacion: 'Seguro',
    Distrito: {
        Nombre: 'Distrito1',
        Calle: {
            Nombre_Calle: 'Calle1',
            Nivel_Seguridad: 3
            }
        },

    Incidencia: {
        Descripcion: 'Incidencia de prueba',
        Hora_Incidente: new Date(),
        Gravedad: 90,
        Tipo_Incidente: 'Robo',

    }

});