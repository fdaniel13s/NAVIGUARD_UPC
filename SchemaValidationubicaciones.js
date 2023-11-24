{
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'Seguridad_Ubicacion',
        'Distrito',
        'Incidencia'
      ],
      properties: {
        Seguridad_Ubicacion: {
          bsonType: 'string',
          description: 'Debe ser del tipo string y es necesario'
        },
        Distrito: {
          bsonType: 'object',
          required: [
            'Nombre',
            'Calle'
          ],
          properties: {
            Nombre: {
              bsonType: 'string',
              description: 'Debe ser del tipo string y es necesario'
            },
            Calle: {
              bsonType: 'object',
              required: [
                'Nombre_Calle',
                'Nivel_Seguridad'
              ],
              properties: {
                Nombre_Calle: {
                  bsonType: 'string',
                  description: 'Debe ser del tipo string y es necesario'
                },
                Nivel_Seguridad: {
                  bsonType: 'int',
                  description: 'Debe ser del tipo int y es necesario'
                }
              }
            }
          }
        },
        Incidencia: {
          bsonType: 'object',
          required: [
            'Descripcion',
            'Hora_Incidente',
            'Gravedad',
            'Tipo_Incidente'
          ],
          properties: {
            Descripcion: {
              bsonType: 'string',
              description: 'Debe ser del tipo string y es necesario'
            },
            Hora_Incidente: {
              bsonType: 'date',
              description: 'Debe ser del tipo date y es necesario'
            },
            Gravedad: {
              bsonType: 'int',
              description: 'Debe ser del tipo int y es necesario'
            },
            Tipo_Incidente: {
              bsonType: 'string',
              description: 'Debe ser del tipo string y es necesario'
            }
          }
        }
      }
    }
  }