{
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'punto_inicio',
        'punto_final',
        'distancia',
        'seguridad_ruta',
        'ubicacion',
        'denuncias',
        'compartidas',
        'usuario'
      ],
      properties: {
        punto_inicio: {
          bsonType: 'string',
          description: 'Debe ser del tipo string y es necesario'
        },
        punto_final: {
          bsonType: 'string',
          description: 'Debe ser del tipo string y es necesario'
        },
        distancia: {
          bsonType: 'double',
          description: 'Debe ser del tipo double y es necesario'
        },
        seguridad_ruta: {
          bsonType: 'int',
          description: 'Debe ser del tipo int y es necesario, rango del 1 al 10'
        },
        ubicacion: {
          bsonType: 'object',
          description: 'Debe ser del tipo objecto, detallando la ubicación'
        },
        denuncias: {
          bsonType: 'object',
          required: [
            'descripcion',
            'usuario_id'
          ],
          properties: {
            descripcion: {
              bsonType: 'string',
              description: 'Debe ser del tipo string y es necesario'
            },
            usuario_id: {
              bsonType: 'objectId',
              description: 'Debe ser del tipo ObjectId y es necesario'
            }
          }
        },
        compartidas: {
          bsonType: 'object',
          required: [
            'cantidad_compartidas',
            'fecha',
            'enlace'
          ],
          properties: {
            cantidad_compartidas: {
              bsonType: 'int',
              description: 'Debe ser del tipo int y es necesario'
            },
            fecha: {
              bsonType: 'date',
              description: 'Debe ser del tipo date y es necesario'
            },
            enlace: {
              bsonType: 'string',
              description: 'Debe ser del tipo string y es necesario'
            }
          }
        },
        usuario: {
          bsonType: 'objectId',
          description: 'Debe ser del tipo ObjectId y es necesario'
        }
      }
    }
  }