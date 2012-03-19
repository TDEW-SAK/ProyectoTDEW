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


#teachers = Teacher.create([{names: 'YAMIL', last_name: 'RAMOS', second_last_name: 'GARCIA'},{names: 'HECTOR EDUARDO', last_name: 'MENDIVIL', second_last_name: 'RIVAS'}])
#subjects = Subject.create(name: 'Gestion de la Calidad de Software', teachers: teachers)
#subject.teachers << teachers