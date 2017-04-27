# ORANGE HIGHSCHOOL FACILITIES

school_facilities = {
  classroom_facilities: ['table', 'chair', 'blackboard', 'chalk', 'ceiling fan'],

  classroom_count: 40,

  chemistry_lab: [
    'eye wash station', 'fire blanket',
    ['bottle', 'narrow mouth', 4],
    ['flask', 'erlenmeyer', 2],
    ['sodium acetate', '100g']
  ],

  physics_lab: [
    'Goggles', 'television', 'compound bar',
    ['Mirrors', 'flat', 2],
    ['Compass', 'magnetic']
  ],

  computer_room: ['computers','tables', 'chairs'],

  canteen: {
    eating_area: {table: 100, chair: 400},
    kitchen: ['oven', 'stove', 'pans', 'plates']
  },

  in_san_francisco: false
}

school_facilities[:computer_room].push ('ceiling_fan')
school_facilities[:canteen][:eating_area][:chair] = 500

puts school_facilities
puts school_facilities[:computer_room]
puts school_facilities[:chemistry_lab][2][2]
puts school_facilities[:canteen][:eating_area][:chair]
puts school_facilities[:canteen][:kitchen][2]