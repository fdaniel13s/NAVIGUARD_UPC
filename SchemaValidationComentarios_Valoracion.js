{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      'comentario',
      'valoracion',
      'ruta_id'
    ],
    properties: {
      comentario: {
        bsonType: 'string',
        description: 'Debe ser del tipo string y es necesario'
      },
      valoracion: {
        bsonType: 'int',
        description: 'Debe ser del tipo it y es necesario, rango del 1 al 10'
      },
      ruta_id: {
        bsonType: 'object',
        description: 'Debe ser del tipo objecto, detallando la ruta'
      }
    }
  }
}