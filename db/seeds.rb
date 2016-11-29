# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.new
admin.email = "admin@mail.com"
admin.password = "password"
admin.password_confirmation = "password"
admin.admin_role = "true"
admin.save!

design = Design.new
design.name = "16 Kwadraad"
design.capacity = 10
design.save!

design2 = Design.new
design2.name = "Schouw"
design2.capacity = 8
design2.save!

design3 = Design.new
design3.name = "Draak"
design3.capacity = 12
design3.save!