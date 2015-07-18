class Question < ActiveRecord::Base

  belongs_to :survey
  has_many :choices
  has_many :survey_choices


end
