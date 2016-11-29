# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#admin = User.new
#admin.email = "admin@mail.com"
#admin.password = "password"
#admin.password_confirmation = "password"
#admin.admin_role = "true"
#admin.save!

# design = Design.new
# design.name = "16 Kwadraad"
# design.capacity = 10
# design.save!
#
# design2 = Design.new
# design2.name = "Schouw"
# design2.capacity = 8
# design2.save!
#
# design3 = Design.new
# design3.name = "Draak"
# design3.capacity = 12
# design3.save!

ct = CourseType.new
ct.name = "Beginner"
ct.description = "Taxidermy fashion axe vaporware roof party coloring book. Live-edge DIY paleo,
kale chips listicle single-origin
coffee roof party. Fam kogi yuccie, live-edge echo park tattooed locavore put a bird on it."
ct.price = 500
ct.ship_amount = 7
ct.design_id = 1
ct.save!

ct = CourseType.new
ct.name = "Gevorderden"
ct.description = "Fashion axe kale chips microdosing,
blue bottle forage normcore chia keffiyeh fingerstache iceland marfa bitters tacos. Schlitz live-edge food
truck church-key, farm-to-table fixie tilde. Fingerstache tote bag cardigan coloring book pop-up selfies."
ct.price = 700
ct.ship_amount = 3
ct.design_id = 3
ct.save!

ct = CourseType.new
ct.name = "Wadtochten"
ct.description = "VHS tote bag iPhone hexagon fashion axe copper mug.
Chambray raclette deep v kombucha artisan yuccie.
Bespoke subway tile put a bird on it,
vape cronut sriracha poke tousled skateboard hella health goth.
Hella crucifix everyday carry deep v fashion axe affogato.
Green juice +1 hot chicken, small batch normcore salvia VHS fingerstache butcher
food truck sustainable. Microdosing austin air plant hella vegan, narwhal craft beer pinterest hell of cred
single-origin coffee brooklyn.
Freegan whatever venmo, poutine prism artisan sustainable direct trade actually PBR&B."
ct.price = 800
ct.ship_amount = 5
ct.design_id = 2
ct.save!