{
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'nombre',
        'ubicaciones_id',
        'hora_apertura',
        'hora_cierre'
      ],
      properties: {
        nombre: {
          bsonType: 'string',
          description: 'Must be a string and is required'
        },
        ubicaciones_id: {
          bsonType: 'int',
          description: 'Must be an int and is required'
        },
        hora_apertura: {
          bsonType: 'object',
          description: 'Must be an object and is required',
          properties: {
            hora: {
              bsonType: 'int',
              description: 'Must be an int and is required'
            },
            minutos: {
              bsonType: 'int',
              description: 'Must be an int and is required'
            }
          }
        },
        hora_cierre: {
          bsonType: 'object',
          description: 'Must be an object and is required',
          properties: {
            hora: {
              bsonType: 'int',
              description: 'Must be an int and is required'
            },
            minutos: {
              bsonType: 'int',
              description: 'Must be an int and is required'
            }
          }
        }
      }
    }
  }