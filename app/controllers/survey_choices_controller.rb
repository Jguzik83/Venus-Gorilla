class SurveyChoicesController < ApplicationController

  def create
    survey_choice = SurveyChoice.new(survey_choice_params)
    @user_survey = UserSurvey.find_by(id: survey_choice.user_survey_id)
    survey_choice.save!
    if @user_survey.survey_over?
      redirect_to thanks_path
    elsif request.xhr?
    @question = @user_survey.give_question
      render(partial: 'user_surveys/show', layout: false, locals:{question: @question, user_survey: @user_survey})
    end
    # redirect_to user_survey_path(survey_choice.user_survey_id)
  end
  # def create
  #   survey_choice = SurveyChoice.new(survey_choice_params)
  #   # survey_choice.save!
  #   if survey_choice.save && request.xhr?
  #     @user_survey = UserSurvey.find_by(id: survey_choice.user_survey_id)
  #     @question = @user_survey.give_question
  #     request.xhr? ? render(partial: 'user_surveys/show', layout: false, locals:{question: @question, user_survey: @user_survey}) : redirect_to(@question)
  #     #'render "show", locals: {question: @question}'
  #   else
  #     redirect_to root_path
  #   end
  #   # redirect_to user_survey_path(survey_choice.user_survey_id)
  # end

  private

  def survey_choice_params
    params.require(:survey_choice).permit(:question_id, :choice_id, :user_survey_id)
  end

end
