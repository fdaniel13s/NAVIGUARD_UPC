{
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'nombre',
        'correo',
        'tipo',
        'contraseña',
        'historial_viajes',
        'contactos',
        'preferencias'
      ],
      properties: {
        correo: {
          bsonType: 'string',
          description: 'Dirección de correo electrónico válida'
        },
        contactos: {
          bsonType: 'object',
          required: [
            'nombre',
            'numero',
            'parentesco',
            'correo'
          ],
          properties: {
            correo: {
              bsonType: 'string',
              description: 'Dirección de correo electrónico válida del contacto'
            }
          }
        }
      }
    }
  }