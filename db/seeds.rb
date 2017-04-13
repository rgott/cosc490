# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
School.delete_all
Group.delete_all
User.delete_all
Role.delete_all
Event.delete_all
Requirement.delete_all
Participation.delete_all


School.create(name: 'Towson University')

Group.create(school_id: '1', name: 'Alpha Beta Delta')

Role.create(name: 'member')
Role.create(name: 'officer')
Role.create(name: 'admin')

User.create(role_id: '1', group_id: '1', first_name: 'Alto', last_name: 'Bravo', username: 'AL123', password: 'abc123', email: 'student1@gmail.com')
User.create(role_id: '2', group_id: '1', first_name: 'Charlie', last_name: 'Decker', username: 'Char', password: 'def456', email: 'student2@gmail.com')

Category.create(name: 'Category A', number: '1')
Category.create(name: 'Category B', number: '2')
Category.create(name: 'Category C', number: '3')
Category.create(name: 'Category D', number: '4')
Category.create(name: 'Category E', number: '5')

Requirement.create(category_id: '1', name: 'Service Hours', description: 'Do some service now, ya hear', amt_complete: 10.00, amt_goal: 20.00)
Requirement.create(category_id: '2', name: 'Leadership', description: 'Being leaders in the campus community', amt_complete: 3.00, amt_goal: 5.00)
Requirement.create(category_id: '2', name: 'Service Hours', description: 'Do some service now, ya hear', amt_complete: 1.00, amt_goal: 20.00)
Requirement.create(category_id: '3', name: 'Leadership', description: 'Being leaders in the campus community', amt_complete: 5.00, amt_goal: 5.00)

d = DateTime.new(2017,11,19,8,37,48,"-06:00")
Event.create(name: 'Trash pick up', date: d, total_hours: 10.0)
Participation.create(user_id: 1, event_id: 1, hours: 6.00)
Participation.create(user_id: 2, event_id: 1, hours: 4.00)




