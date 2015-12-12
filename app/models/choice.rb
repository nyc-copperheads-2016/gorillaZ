class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :answers

  def self.create_choices(question, choice_answers)
    choice_answers = choice_answers.split(",")
    choice_answers.each do |choice_answer|
      question.choices.new(answer: choice_answer)
    end
  end
end
