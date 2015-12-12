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

user2 = User.create(username: "Courtney", password: "nation")

survey2 = user2.surveys.create(name: "What Do You Like To Do In Your Free Time?")


question1 = survey2.questions.create(description: "Do You Like To Socialize?")
question2 = survey2.questions.create(description: "Do You Like To Relax And Rest?")
question3 = survey2.questions.create(description: "Do You Like To Eat?")

question1.choices.create(answer: "Yes")
question1.choices.create(answer: "No")
question1.choices.create(answer: "Unsure")


question2.choices.create(answer: "Yes")
question2.choices.create(answer: "No")
question2.choices.create(answer: "Unsure")


question3.choices.create(answer: "Yes")
question3.choices.create(answer: "No")
question3.choices.create(answer: "Unsure")

taken_survey2.answers.create( question_id:1 , choice_id:1 )
taken_survey2.answers.create( question_id:2 , choice_id:1 )
taken_survey2.answers.create( question_id:3 , choice_id:1 )


