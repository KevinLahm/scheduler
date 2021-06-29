# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Doctor.create!([
  {first_name: "David", last_name: "Banes", email: "david@gmail.com", phone_no: "+123456789"},
  {first_name: "Ann", last_name: "Smalling", email: "ann@gmail.com", phone_no: "+123456111"},
  {first_name: "Emily", last_name: "Brains", email: "emily@gmail.com", phone_no: "+123456222"},
  {first_name: "Chris", last_name: "Stones", email: "chris@gmail.com", phone_no: "+123456333"}
])
