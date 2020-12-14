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
    
    
# clients = Client.create({
#         name: Faker::Name.name,
#         phone: Faker::PhoneNumber.phone_number
#         })
        
        
clients = Client.create([
    {
        name: "Soniya Akhter",
        phone: 12345678
    },
    {
        name: "John El",
        phone: 12345678
    },
    {
        name: "Kriti Hansen",
        phone: "12345678"
    }
])

5.times do
    tasks = Task.create({
        title: "Programmer",
        description: "Frontend Devepoler",
        start_date: "",
        finished_date: "",
        client_id: clients.first,
        user_id: users.first
    })
end

# tasks = Task.create({
#     title: Faker::Educator.university,
#     description: Faker::Lorem.sentence,
#     start_date: Faker::Date.between_expect,
#     finished_date: Faker::Date.between_expect,
#     client_id: clients.first,
#     user_id: users.first
# })
        