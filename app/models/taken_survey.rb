class TakenSurvey < ActiveRecord::Base
  belongs_to :user, :surveys
  has_many :answers

end