class UserSurvey < ActiveRecord::Base
  belongs_to :survey
  belongs_to :user
  has_many :user_survey_choices
  has_many :questions, through: :user_survey_choices
  has_many :choices, through: :user_survey_choices
end
