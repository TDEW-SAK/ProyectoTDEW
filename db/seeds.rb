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
t3 = Teacher.create(names: 'JULIUS ERNESTO', last_name: 'KU', second_last_name: 'LAM')
t4 = Teacher.create(names: 'LUIS', last_name: 'BENDEZU', second_last_name: 'LOAYZA')
t5 = Teacher.create(names: 'OSCAR', last_name: 'RAMOS', second_last_name: 'PENNY')

f = Form.create(name: 'Evaluacion General')
i1 = Item.create(name: 'Siempre llego puntualmente?', category: 'M')
i2 = Item.create(name: 'Se demoro al calificar examenes?', category: 'M')
i3 = Item.create(name: 'Tenia paciencia?', category: 'M')
i4 = Item.create(name: 'Poseia una buena metogolodia de ensenianza?', category: 'M')
i5 = Item.create(name: 'Promovia el interes por la clase?', category: 'M')

f.items << i1
f.items << i2
f.items << i3
f.items << i4
f.items << i5

#Agregado LBL

u = User.create(name: 'Julio Perez', email: 'jperez@gmail.com')
u2 = User.create(name: 'Juan Vasquez', email: 'jvasquez@gmail.com')
u3 = User.create(name: 'Javier Loli', email: 'jloli@gmail.com')
u4 = User.create(name: 'Pedro Morales', email: 'pmorales@gmail.com')
u5 = User.create(name: 'Roberto Rivas', email: 'rrivas@gmail.com')

#Primera Evaluacion al profesor Yamil Ramos

e = Evaluation.create(comment: 'En general enseniaba bien, pero no tenia paciencia con gente poco habil')
e.teacher = t
e.form = f
e.user = u
e.save

ed = EvaluationDetail.create(grade: 2)
ed.item = i1
ed.evaluation = e
ed.save

ed2 = EvaluationDetail.create(grade: 3)
ed2.item = i2
ed2.evaluation = e
ed2.save

ed3 = EvaluationDetail.create(grade: 3)
ed3.item = i3
ed3.evaluation = e
ed3.save

ed4 = EvaluationDetail.create(grade: 3)
ed4.item = i4
ed4.evaluation = e
ed4.save

ed5 = EvaluationDetail.create(grade: 3)
ed5.item = i5
ed5.evaluation = e
ed5.save

#Segunda Evaluacion

e2 = Evaluation.create(comment: 'Excelente profesor. Puntual y corrige sin demoras')
e2.teacher = t
e2.form = f
e2.user = u2
e2.save

ed6 = EvaluationDetail.create(grade: 4)
ed6.item = i1
ed6.evaluation = e2
ed6.save

ed7 = EvaluationDetail.create(grade: 4)
ed7.item = i2
ed7.evaluation = e2
ed7.save

ed8 = EvaluationDetail.create(grade: 4)
ed8.item = i3
ed8.evaluation = e2
ed8.save

ed9 = EvaluationDetail.create(grade: 4)
ed9.item = i4
ed9.evaluation = e2
ed9.save

ed10 = EvaluationDetail.create(grade: 4)
ed10.item = i5
ed10.evaluation = e2
ed10.save

#Tercera Evaluacion

e3 = Evaluation.create(comment: 'No lo recomiendo. Califica bastante bajo en los examenes')
e3.teacher = t
e3.form = f
e3.user = u3
e3.save

ed11 = EvaluationDetail.create(grade: 1)
ed11.item = i1
ed11.evaluation = e3
ed11.save

ed12 = EvaluationDetail.create(grade: 2)
ed12.item = i2
ed12.evaluation = e3
ed12.save

ed13 = EvaluationDetail.create(grade: 3)
ed13.item = i3
ed13.evaluation = e3
ed13.save

ed14 = EvaluationDetail.create(grade: 2)
ed14.item = i4
ed14.evaluation = e3
ed14.save

ed15 = EvaluationDetail.create(grade: 1)
ed15.item = i5
ed15.evaluation = e3
ed15.save

#Evaluaciones para el profesor Hector Mendivil

#Primera Evaluacion

e4 = Evaluation.create(comment: 'Recomendado 100%')
e4.teacher = t2
e4.form = f
e4.user = u4
e4.save

ed16 = EvaluationDetail.create(grade: 4)
ed16.item = i1
ed16.evaluation = e4
ed16.save

ed17 = EvaluationDetail.create(grade: 4)
ed17.item = i2
ed17.evaluation = e4
ed17.save

ed18 = EvaluationDetail.create(grade: 4)
ed18.item = i3
ed18.evaluation = e4
ed18.save

ed19 = EvaluationDetail.create(grade: 4)
ed19.item = i4
ed19.evaluation = e4
ed19.save

ed20 = EvaluationDetail.create(grade: 4)
ed20.item = i5
ed20.evaluation = e4
ed20.save

#Segunda Evaluacion

e5 = Evaluation.create(comment: 'Su talon de Aquiles es la puntualidad')
e5.teacher = t2
e5.form = f
e5.user = u5
e5.save

ed21 = EvaluationDetail.create(grade: 1)
ed21.item = i1
ed21.evaluation = e5
ed21.save

ed22 = EvaluationDetail.create(grade: 4)
ed22.item = i2
ed22.evaluation = e5
ed22.save

ed23 = EvaluationDetail.create(grade: 4)
ed23.item = i3
ed23.evaluation = e5
ed23.save

ed24 = EvaluationDetail.create(grade: 4)
ed24.item = i4
ed24.evaluation = e5
ed24.save

ed25 = EvaluationDetail.create(grade: 4)
ed25.item = i5
ed25.evaluation = e5
ed25.save


#Fin de agregado LBL

#teachers = Teacher.create([{names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA'},{names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS'}])
#subjects = Subject.create(name: 'Gestion de la Calidad de Software', teachers: teachers)
#subject.teachers << teachers