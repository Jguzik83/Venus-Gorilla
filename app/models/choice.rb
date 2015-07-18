class Choice < ActiveRecord::Base

  belongs_to :question
  has_many :user_survey_choices


end
