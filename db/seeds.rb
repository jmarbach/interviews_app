# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Companies = Company.create! :name => "Google"
 
question1 = Question.create! :question_sentence => "How many golf balls fit in a 747?"
 
Answer.create! :text_answer => "200,000", :question => question1