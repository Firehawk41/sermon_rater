# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Question.create!([
  { content: "The speaker communicated clearly and was easy to follow." },
  { content: "The speaker kept my attention and presented in an engaging way." },
  { content: "The message was faithful to Scripture and accurately represented biblical truth." },
  { content: "The lesson connected to real life and provided practical application." },
  { content: "I learned something new or gained fresh insight from the message." },
  { content: "This message encouraged, challenged, or equipped me spiritually." }
])
