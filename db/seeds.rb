user1 = User.create(username: "bruno", password: "nation")

survey1 = user1.surveys.create(name: "america")
taken_survey1=  user1.taken_surveys.create(survey_id: survey1.id)

question1 = survey1.questions.create(description: "whats the name of our president")
question2 = survey1.questions.create(description: "how many states are in the US")
question3 = survey1.questions.create(description: "where does the president live")

question1.choices.create(answer: "obama")
question1.choices.create(answer: "clinton")
question1.choices.create(answer: "bush")
question1.choices.create(answer: "reagan")


question2.choices.create(answer: "50")
question2.choices.create(answer: "20")
question2.choices.create(answer: "30")

question3.choices.create(answer: "white house")
question3.choices.create(answer: "green house")
question3.choices.create(answer: "light house ")
question3.choices.create(answer: "neverland ranch")

taken_survey1.answers.create( question_id:1 , choice_id:1 )
taken_survey1.answers.create( question_id:2 , choice_id:1 )
taken_survey1.answers.create( question_id:3 , choice_id:1 )


# courtney = User.create([{username: "Courtney", password: "123456789"}])

# freetime_survey = courtney << Survey.new({name: "What Do You Like To Do In Your Free Time?"})

# freetime_survey << Question.new({description: "Do You Like To Travel?", answer: "Yes", answer: "No", answer: "Unsure"})

# freetime_survey << Question.new({description: "Do You Like To Socialize?"})answer: "Yes", answer: "No", answer: "Unsure"})
# freetime_survey << Question.new({description: "Do You Like To Relax And Rest?", answer: "Yes", answer: "No", answer: "Unsure"})
# freetime_survey << Question.new({description: "Do You Like To Eat?", answer: "Yes", answer: "No", answer: "Unsure"})
# freetime_survey << Question.new({description: "Do You Have Many Friends?", answer: "Yes", answer: "No", answer: "Unsure"})
# freetime_survey.save


