# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def question
  ["should", "can", "why do", "how do"].sample
end

def pronoun
  %w(I you they).sample
end

def faker_title
  "#{question.capitalize} #{pronoun} #{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}?"
end

10.times {Todo.create!(
  title: faker_title,
  order: rand(1..3),
  completed: [true, false].sample)
}
