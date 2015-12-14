users = [{username: "Bruno", password: "nation"}, {username: "Courtney", password: "nation"}]

users.each do |user|
  User.create(user)
end

survey1 = Survey.create(name: "america", creator_id: User.find(1).id)
taken_survey1=  User.find(1).taken_surveys.create(survey_id: survey1.id)

descriptions = ["whats the name of our president", "how many states are in the US", "where does the president live"]
question1_choices = ["Obama", "Clinton", "Bush", "Reagan"]
question2_choices = ["50", "20", "30"]
question3_choices = ["White House", "Green House", "Light House", "Neverland Ranch"]

descriptions.each do |description|
  survey1.questions.create(description: description)
end

question1_choices.each do |choice|
    survey1.questions.find(1).choices.create(answer: choice)
end

question2_choices.each do |choice|
    survey1.questions.find(2).choices.create(answer: choice)
end

question3_choices.each do |choice|
    survey1.questions.find(3).choices.create(answer: choice)
end

survey1.questions.each do |question|
  question.choices.each do |choice|
    taken_survey1.answers.create(question_id: question.id, choice_id: choice.id)
  end
end


survey2 = Survey.create(name: "What Do You Like To Do In Your Free Time?", creator_id: User.find(2).id)
taken_survey2 = User.find(2).taken_surveys.create(survey_id: survey2.id)

descriptions = ["Do You Like To Socialize?", "Do You Like To Relax And Rest?", "Do You Like To Eat?"]
choices = ["yes", "no", "unsure"]

descriptions.each do |description|
  survey2.questions.create(description: description)
end

survey2.questions.each do |question|
  choices.each do |choice|
    question.choices.create(answer: choice)
  end
end

survey2.questions.each do |question|
  question.choices.each do |choice|
    taken_survey2.answers.create(question_id: question.id, choice_id: choice.id)
  end
end


