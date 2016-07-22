require "faker"

Question.delete_all
Answer.delete_all

30.times do
    User.create(name: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: "123")
end

100.times do
  Question.create(title: Faker::StarWars.planet,
    question: Faker::Hipster.paragraph,
    user_id: User.all.sample.id
    )
end

400.times do
  Answer.create(answer: Faker::Hipster.paragraph,
    user_id: User.all.sample.id,
    question_id: Question.all.sample.id
    )
end
