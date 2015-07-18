class Survey < ActiveRecord::Base

  has_many :questions
  has_many :user_surveys
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

end
