class SurveyChoicesController < ApplicationController

  def create
    survey_choice = SurveyChoice.new(survey_choice_params)
    # byebug
    survey_choice.save!
    redirect_to user_survey_path(survey_choice.user_survey_id)
  end

  private

  def survey_choice_params
    params.require(:survey_choice).permit(:question_id, :choice_id, :user_survey_id)
  end

end
