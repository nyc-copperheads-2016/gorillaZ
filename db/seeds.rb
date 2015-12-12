user1 = User.create(username: "bruno", password: "nation")
# user2 = User.create([
# {username: "chris", password: "savage"}
#   ])
# user3 = User.create([
# {username: "courtney", password: "aquarius"}
#   ])

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
# survey2 = Survey.create([
# {name: "states", creator_id:2 }
#   ])
# survey2 = Survey.create([
# {name: "", creator_id:3 }
#   ])

# taken_survey2 = Taken_Survey.create([
# {survey_id:2  ,user_id:2 }
#   ])
# taken_survey2 = Taken_Survey.create([
# {survey_id:3  ,user_id:3 }
#   ])

