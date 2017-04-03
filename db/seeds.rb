# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

School.create(name: 'Towson University')
Group.create(name: 'Alpha Beta Delta')
User.create(name_first: 'Alto', name_last: 'Bravo', username: 'AL123', password: 'abc123', email: 'student1@gmail.com')
User.create(name_first: 'Charlie', name_last: 'Decker', username: 'Char', password: 'def456', email: 'student2@gmail.com')

Role.create(name: 'member')
Role.create(name: 'officer')
Role.create(name: 'admin')

SchoolAndGroup.create(id_school: 1, id_group: 1)
GroupAndUser.create(id_group: 1, id_user: 1, id_role: 1)
GroupAndUser.create(id_group: 1, id_user: 2, id_role: 2)

Requirement.create(name: 'Service Hours', description: 'Do some service now, ya hear', amt_completed: 10.00, amt_goal: 20.00)
Requirement.create(name: 'Leadership', description: 'Being leaders in the campus community', amt_completed: 3.00, amt_goal: 5.00)

d = DateTime.new(2017,11,19,8,37,48,"-06:00")
Event.create(name: 'Trash pick up', date: d, total_hours: 10.0, id_req: 1)
Participation.create(id_user: 1, id_event: 1, hours: 6.00)
Participation.create(id_user: 2, id_event: 1, hours: 4.00)




