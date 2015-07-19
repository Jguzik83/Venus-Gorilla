class UserSurvey < ActiveRecord::Base
  belongs_to :survey
  belongs_to :user
  has_many :survey_choices
  has_many :questions, through: :survey_choices
  has_many :choices, through: :survey_choices


  def load_questions # load_survey
    survey = Survey.find_by(id: self.survey_id) #find_survey
    survey.questions - completed_questions #survey.questions
  end

  def completed_questions
    choices = SurveyChoice.where(user_survey: self.id)
    choices.map(&:question)
    # binding.pry
  end

  def give_question
    load_questions.first
  end

  def survey_over?
    load_questions.empty?
  end

end
