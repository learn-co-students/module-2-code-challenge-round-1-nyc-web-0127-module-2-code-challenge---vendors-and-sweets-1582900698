# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end


VendorSweet.create(vendor_id: 1, sweet_id: 1, price:15)
VendorSweet.create(vendor_id: 1, sweet_id: 2, price:5)
VendorSweet.create(vendor_id: 1, sweet_id: 3, price:10)
VendorSweet.create(vendor_id: 1, sweet_id: 4, price:5)
VendorSweet.create(vendor_id: 2, sweet_id: 1, price:20)
VendorSweet.create(vendor_id: 2, sweet_id: 2, price:15)
VendorSweet.create(vendor_id: 2, sweet_id: 3, price:25)
VendorSweet.create(vendor_id: 3, sweet_id: 4, price:5)
VendorSweet.create(vendor_id: 3, sweet_id: 5, price:10)
VendorSweet.create(vendor_id: 4, sweet_id: 6, price:5)
VendorSweet.create(vendor_id: 4, sweet_id: 3, price:25)
VendorSweet.create(vendor_id: 5, sweet_id: 5, price:20)
VendorSweet.create(vendor_id: 6, sweet_id: 4, price:10)