class SurveyChoicesController < ApplicationController

  def create
    survey_choice = SurveyChoice.new(survey_choice_params)
    # survey_choice.save!
    if survey_choice.save && request.xhr?
      @user_survey = UserServey.find_by(id: survey_choice.user_survey_id)
      @question = @user_survey.give_question
      'render "show", locals: {question: @question}'
    end
    # redirect_to user_survey_path(survey_choice.user_survey_id)
  end

  private

  def survey_choice_params
    params.require(:survey_choice).permit(:question_id, :choice_id, :user_survey_id)
  end

end
