# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Carreras
t = Teacher.create(names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA')
t2 = Teacher.create(names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS')


f = Form.create(name: 'Formulario de prueba 1')
i1 = Item.create(name: 'Pregunta 1?', category: 'M')
i2 = Item.create(name: 'Pregunta 2?', category: 'M')
i3 = Item.create(name: 'Pregunta 3?', category: 'M')
i4 = Item.create(name: 'Pregunta 4?', category: 'M')
i5 = Item.create(name: 'Pregunta 5?', category: 'M')

f.items << i1
f.items << i2
f.items << i3
f.items << i4
f.items << i5

#teachers = Teacher.create([{names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA'},{names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS'}])
#subjects = Subject.create(name: 'Gestion de la Calidad de Software', teachers: teachers)
#subject.teachers << teachers