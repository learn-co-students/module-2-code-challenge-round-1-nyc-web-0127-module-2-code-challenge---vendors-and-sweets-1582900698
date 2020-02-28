# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all

vendor = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]


Vendors.create(name: "Cookies")
Vendors.create(name: "Cookies Cream"")
Vendors.create(name: "Carvel")

Sweets.create(name:"Chocolate Chip Cookie")
Sweets.create(name:"Chocolate Chunk Cookie"")
Sweets.create(name:"M&Ms Cookie")



.times do 
  VendorSweet.create(vendor_id: Vendor.all.sample.id, Sweet_id: Sweet.all.sample.id)
end 