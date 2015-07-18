class Survey < ActiveRecord::Base

  has_many :questions
  has_many :user_surveys
  belongs_to :user, foreign_key: :owner_id

end
