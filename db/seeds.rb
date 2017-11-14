# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
    User.create(
        email: Faker::Internet.email,
        password: "1234"
        
        )
end


20.times do
    Post.create(
        title: Faker::Movie.quote,
        content: Faker::ChuckNorris.fact,
        user_id: (1..20).to_a.sample 
        )


end

