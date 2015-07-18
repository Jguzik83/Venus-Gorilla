class User < ActiveRecord::Base
  has_secure_password

  has_many :surveys, foreign_key: :owner_id
  has_many :user_surveys
  has_many :user_survey_choices, through: :user_surveys
  has_many :choices, through: :user_surveys


  validates :username, presence: true, uniqueness: true
end
