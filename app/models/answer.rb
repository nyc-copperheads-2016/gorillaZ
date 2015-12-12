class Answer < ActiveRecord::Base
  belongs_to :taken_survey
  belongs_to :question
  belongs_to :choice

  def percentage
    #add stats
  end
end
