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

Category.create(name: 'Chapter Management', number: '1')
Category.create(name: 'Alumni Relations', number: '2')
Category.create(name: 'New Member Development and Retention', number: '3')
Category.create(name: 'Diversity Initiatives', number: '4')
Category.create(name: 'Diversity/Cultural Awareness and the Arts Programming', number: '5')
Category.create(name: 'Professional/Career Development', number: '6')
Category.create(name: 'Membership Education', number: '7')

Section.create(category_id: '1', name: 'Financial Management', number: '1')
Section.create(category_id: '2', name: 'Another Section', number: '2')

Requirement.create(section_id: '1', name: 'Chapter has a Budget Signed by Advisor', description: 'User generated description here', amt_complete: 0.00, amt_goal: 2.00)
Requirement.create(section_id: '1', name: 'Current with chapter council\'s account', description: 'User generated description here', amt_complete: 1.00, amt_goal: 2.00)
Requirement.create(section_id: '1', name: 'Current with SGA account', description: 'User generated description here', amt_complete: 1.00, amt_goal: 20.00)
Requirement.create(section_id: '2', name: 'Leadership', description: 'Being leaders in the campus community', amt_complete: 5.00, amt_goal: 5.00)

d = DateTime.new(2017,11,19,8,37,48,"-06:00")
Event.create(requirement_id: '1', name: 'Trash pick up', date: d, total_hours: 10.0)
Participation.create(user_id: 1, event_id: 1, hours: 6.00)
Participation.create(user_id: 2, event_id: 1, hours: 4.00)




