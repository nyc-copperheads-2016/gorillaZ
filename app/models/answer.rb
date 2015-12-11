class Answer < ActiveRecord::Base
  belongs_to :taken_survey, :question, :choice

  def percentage
    #add stats
  end
end