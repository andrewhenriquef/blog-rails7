# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


user = User.create!(
  username: "Brian Adams",
  email: "brian@mailer.com",
  password: "123456"
)

post = user.posts.create!(
  title: "First post from #{user.username}",
  content: "First post content from #{user.username}"
)

Comment.create!(
  post: post,
  user: user,
  content: "First post comment from #{user.username}"
)
