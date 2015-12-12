require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :surveys, foreign_key: :creator_id
  has_many :taken_surveys

validates :username, presence:true, uniqueness: true
validates :password_hash, presence: true, length: {minimum: 6}

    def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.user_taken_surveys
    self.taken_surveys.all
  end


  def self.user_created_surveys
    self.surveys.all
  end
end
