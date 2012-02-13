namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(name: "Alokesh Das",
                 email: "alokesh@gmail.com",
                 born_on: "1977/08/08",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      born_on = "2000/01/01"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   born_on: born_on,
                   password: password,
                   password_confirmation: password)
    end
  end
end