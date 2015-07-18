class Choice < ActiveRecord::Base

  belongs_to :question
  has_many :survey_choices


end
