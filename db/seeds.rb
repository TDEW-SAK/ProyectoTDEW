# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Carreras
c = Career.create(name: 'Ingenieroa de Sistemas - EPE')
t = Teacher.create(names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA')
t2 = Teacher.create(names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS')
s = Subject.create(name: 'Gestion de la Calidad de Software')
c.subjects << s
s.teachers << t
s.teachers << t2

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

e = Evaluation.create(comment: "Este profe es malo!")
e.teacher << t
e.subject << s
e.career << c
e.form << f

ed1 = Evaluation_Detail.create(grade: '1.0')
ed1.evaluation << e
ed1.item << i1 
ed2 = Evaluation_Detail.create(grade: '1.0')
ed2.evaluation << e
ed2.item << i2
ed3 = Evaluation_Detail.create(grade: '1.0')
ed3.evaluation << e
ed3.item << i3
ed4 = Evaluation_Detail.create(grade: '1.0')
ed4.evaluation << e
ed4.item << i4
ed5 = Evaluation_Detail.create(grade: '1.0')
ed5.evaluation << e
ed5.item << i5

#teachers = Teacher.create([{names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA'},{names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS'}])
#subjects = Subject.create(name: 'Gestion de la Calidad de Software', teachers: teachers)
#subject.teachers << teachers