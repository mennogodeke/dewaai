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

ct = CourseType.new
ct.name = "Beginner"
ct.description = "Dit is de beginnerscursus, zoals de naam al zegt, ideaal voor beginners"
ct.price = 500
ct.ship_amount = 7
ct.design_id = 1
ct.save!

ct = CourseType.new
ct.name = "Gevorderden"
ct.description = "Dit is de gevorderdencursus, voor de meer ervaring zeiler"
ct.price = 700
ct.ship_amount = 3
ct.design_id = 3
ct.save!

ct = CourseType.new
ct.name = "Wadtochten"
ct.description = "De wadtochten zijn speciale tochten, hierin varen we door de wadden."
ct.price = 800
ct.ship_amount = 5
ct.design_id = 2
ct.save!