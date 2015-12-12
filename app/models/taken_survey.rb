class TakenSurvey < ActiveRecord::Base
  belongs_to :user, :survey
  has_many :answers

end
