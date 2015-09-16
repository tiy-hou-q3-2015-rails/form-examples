# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plain = Waffle.new
plain.name = "Plain Waffles"
plain.photo = "http://www.ihop.com/menus/main-menu/waffles/-/media/ihop/MenuItems/Belgian%20Waffles/belgium_waff.png?mh=367"
plain.active = true
plain.toppings = "butter"
plain.save

chicken = Waffle.new name: "Chicken and Waffles",
                     photo: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2009/4/14/2/FNM060109WN011_s4x3.jpg.rend.sni12col.landscape.jpeg",
                     active: true,
                     toppings: "Gravy, Fried Chicken"
chicken.save

birds = Waffle.new name: "Angry Birds",
                   photo: "http://www.thejoysofboys.com/wp-content/uploads/2013/06/Angry-Birds-waffles-3.jpg",
                   active: true,
                   toppings: "Bananas, Choco Chips, Orange, Strawberries"
birds.save
