class TakenSurvey < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :answers

  def initial_question
    Survey.find(self.survey_id).questions.first
  end
end
