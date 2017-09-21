# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

organization = Organization.create(name: 'Progras')

employee_group = EmployeeGroup.create(name: 'Developers', min_age: 18, organization: organization)

jimmy = Employee.create!(firstname: 'Jimmy', lastname: 'Poulsen', age: 20, email: 'jimmy@progras.dk', password: 'jimmy123', password_confirmation: 'jimmy123', organization: organization, employee_group: employee_group)
frederik = Employee.create!(firstname: 'Frederik', lastname: 'Spang', age: 21, email: 'frederik@progras.dk', password: 'frederik123', password_confirmation: 'frederik123', organization: organization, employee_group: employee_group)
emil = Employee.create!(firstname: 'Emil', lastname: 'Bækdahl', age: 21, email: 'emil@progras.dk', password: 'emil123', password_confirmation: 'emil123', organization: organization, employee_group: employee_group)

place = Place.create(name: 'HQ', organization: organization, employee_group: employee_group)

shift1 = Shift.create(time_from: DateTime.parse("22/09/2017 18:30"), time_to: DateTime.parse("22/09/2017 23:00"), organization: organization, place: place)
shift2 = Shift.create(time_from: DateTime.parse("22/09/2017 12:00"), time_to: DateTime.parse("22/09/2017 18:30"), organization: organization, place: place, employee: frederik)
shift3 = Shift.create(time_from: DateTime.parse("22/09/2017 23:00"), time_to: DateTime.parse("23/09/2017 07:00"), organization: organization, place: place, employee: emil)

# requests here...
