# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#     users = User.create({
#         email: Faker::Internet.name,
#         password: Faker::Internet.password
#     })
# end

users = User.create ([
    {
        email: "son@tec.dk",
        password: "password"
    },
    {
        email: "don@tec.dk",
        password: "password"
    },
    {
        email: "kim@tec.dk",
        password: "password"
    },
])

# clients = Client.create([
#     {
#         name: "Soniya Akhter",
#         email: "son@tec.dk",
#         password: "password",
#         phone: 12345678
#     },
#     {
#         name: "John El",
#         email: "don@tec.dk",
#         password: "password",
#         phone: 12345678
#     },
#     {
#         name: "Kriti Hansen",
#         email: "kim@tec.dk",
#         password: "password",
#         phone: "12345678"
#     }
# ])

# tasks = Task.create({
#     title: Faker::Educator.university,
#     description: Faker::Lorem.sentence,
#     deadline: Faker::Date.between,
#     start_date: Faker::Date.between_expect,
#     finished_date: Faker::Date.between_expect,
#     client_id: clients.first
# })
