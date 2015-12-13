class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :questions
  has_many :taken_surveys
  has_many :answers, through: :taken_surveys

  def general_statistic(answer)
    self.answers.where(question_id: answer.question_id).count
  end

  def percentile(answer)
    self.answers.where(question_id: answer.question_id, choice_id: answer.choice_id).count
  end
end
