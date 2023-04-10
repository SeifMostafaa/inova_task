# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Creating Users"
User.create(username: "seifmostafa_author")
User.create(username: "seifmostafa_critic")
p "DONE: Creating Users"

p "Creating 50K Posts, It may take a while (I recommend preparing a cup of coffee untill I finish)"
50000.times do |i|
  Post.create(user_id: 1, title: "Post ##{i}", body: "Post number #{i}")
end
p "DONE: Creating 1000 Posts"

p "Creating 20K Review, It may take a while (I recommend enjoying cup of coffee untill I finish)"
20000.times do |i|
  Review.create(user_id: 1, post_id: i, comment: "Critic Comment", rate: Random.rand(0..5))
end
p "DONE: Creating 1000 Review"