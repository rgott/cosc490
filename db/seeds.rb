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

User.create(role_id: '1', group_id: '1', first_name: 'Alto', last_name: 'Bravo', password: 'abc123', email: 'student1@gmail.com')
User.create(role_id: '2', group_id: '1', first_name: 'Charlie', last_name: 'Decker', password: 'def456', email: 'student2@gmail.com')



# Category 1

Category.create(name: 'Academics', number: '1')

Section.create(category_id: '1', name: 'GPA', number: '1')
Requirement.create(section_id: '1', name: 'Chapter GPA', description: 'None', amt_goal: 4.00, order_number: 1, is_event_oriented: 0)
Requirement.create(section_id: '1', name: 'Newest Member GPA', description: 'None', amt_goal: 4.00, order_number: 2, is_event_oriented: 0)
Requirement.create(section_id: '1', name: 'Academic or Scholarship Development', description: 'None', amt_goal: 100.00, order_number: 3, is_event_oriented: 0)

# Category 2

Category.create(name: 'Chapter Management', number: '2')

Section.create(category_id: '2', name: 'Financial Management', number: '1')
Requirement.create(section_id: '2', name: 'Chapter has a Budget Signed by Advisor', description: 'None', amt_goal: 2.00, order_number: 1, is_event_oriented: 0)
Requirement.create(section_id: '2', name: 'Current with chapter council\'s account', description: 'None', amt_goal: 2.00, order_number: 2, is_event_oriented: 0)
Requirement.create(section_id: '2', name: 'Current with SGA account', description: 'None', amt_goal: 2.00, order_number: 3, is_event_oriented: 0)

Section.create(category_id: '2', name: 'Organizational Deadlines', number: '2')
Requirement.create(section_id: '3', name: 'Presidential Deadlines ', description: 'None', amt_goal: 5.00, order_number: 1, is_event_oriented: 0)
Requirement.create(section_id: '3', name: 'Rosters handed in on time', description: 'None', amt_goal: 1.00, order_number: 2, is_event_oriented: 0)
Requirement.create(section_id: '3', name: 'Submits Relationship Statement', description: 'None', amt_goal: 1.00, order_number: 3, is_event_oriented: 0)

# Category 3

Category.create(name: 'Member Development', number: '3')

Section.create(category_id: '3', name: 'Health and Wellness Programming', number: '1')
Requirement.create(section_id: '4', name: 'Attendance', description: 'None', amt_goal: 5.00, order_number: 1, is_event_oriented: 1)
Requirement.create(section_id: '4', name: 'Chapter is a co-Sponsor of a Program with any Towson University organization', description: 'None', amt_goal: 3.00, order_number: 2, is_event_oriented: 0)
Requirement.create(section_id: '4', name: 'Chapter is a sponsor of a program with chapter from the same council', description: 'None', amt_goal: 3.00, order_number: 3, is_event_oriented: 1)
Requirement.create(section_id: '4', name: 'Chapter is a sponsor of a program with chapter from a culturally different council ', description: 'None', amt_goal: 3.00, order_number: 4, is_event_oriented: 1)

Section.create(category_id: '3', name: 'Alumni Relations', number: '2')
Requirement.create(section_id: '5', name: 'Chapter plans an event for alumni', description: '(multiple people)(2 points for each up to 6 points)', amt_goal: 6.00, order_number: 1, is_event_oriented: 1)
Requirement.create(section_id: '5', name: 'Chapter sends out an alumni newsletter/Has a Yahoo, Hotmail Group, etc./alumni list serve', description: '(multiple people)(2 points for each up to 6 points)', amt_goal: 6.00, order_number: 2, is_event_oriented: 0)

# Category 4

Category.create(name: 'Community Involvement', number: '4')

Section.create(category_id: '4', name: 'Governing Councils', number: '1')

Section.create(category_id: '4', name: 'Community Service', number: '2')
Requirement.create(section_id: '7', name: 'Service Hours', description: 'None', amt_goal: 100.00, order_number: 1, is_event_oriented: 1)


# Category 5

Category.create(name: 'Presentation', number: '5')

Section.create(category_id: '5', name: 'Content', number: '1')

Section.create(category_id: '5', name: 'Delivery', number: '2')

######

d = DateTime.new(2017,11,19,8,37,48,"-06:00")
Event.create(requirement_id: '1', name: 'Enter GPA', date: d, requirement_progress: 3.0)
Event.create(requirement_id: '3', name: 'Enter Scholarship Dev', date: d, requirement_progress: 86.0)
Event.create(requirement_id: '16', name: 'Trash pick up', date: d, requirement_progress: 10.0)

Participation.create(user_id: 1, event_id: 3, hours: 6.00)
Participation.create(user_id: 2, event_id: 3, hours: 4.00)




