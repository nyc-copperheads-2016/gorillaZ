user1 = User.create([
{username: "bruno", password: "nation"}
  ])
# user2 = User.create([
# {username: "chris", password: "savage"}
#   ])
# user3 = User.create([
# {username: "courtney", password: "aquarius"}
#   ])

survey1 = Survey.create([
{name: "america", creator_id:1 }
  ])


survey1.questions.create([
{description: "whats the name of our president", survey_id:1 }
  ])
survey1.questions.create([
{description: "how many states are in the US", survey_id:1 }
  ])
survey1.questions.create([
{description: "where does the president live", survey_id:1 }
  ])



survey1.answers.create([
{taken_survey_id:1, question_id:1 , choice_id:1 }
  ])
survey1.answers.create([
{taken_survey_id:1, question_id:2 , choice_id:1 }
  ])
survey1.answers.create([
{taken_survey_id:1, question_id:3 , choice_id:1 }
  ])


survey1.choices.create([
{answer: "obama", question_id:1 },
{answer: "clinton", question_id:2 },
{answer: "bush", question_id:3 },
{answer: "reagan", question_id:4 }
  ])
survey1.choices.create([
{answer: "50", question_id:1 },
{answer: "10", question_id:2 },
{answer: "20", question_id:3 },
{answer: "30", question_id:4 }
  ])
survey1.choices.create([
{answer: "white house", question_id:1 },
{answer: "green house", question_id:2 },
{answer: "light house ", question_id:3 },
{answer: "neverland ranch", question_id:4 }
  ])



# survey2 = Survey.create([
# {name: "states", creator_id:2 }
#   ])
# survey2 = Survey.create([
# {name: "", creator_id:3 }
#   ])

survey1.taken_surveys.create([
{survey_id:1, user_id:1 }
  ])

# taken_survey2 = Taken_Survey.create([
# {survey_id:2  ,user_id:2 }
#   ])
# taken_survey2 = Taken_Survey.create([
# {survey_id:3  ,user_id:3 }
#   ])

