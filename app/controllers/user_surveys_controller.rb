class UserSurveysController < ApplicationController

  def create
    user = User.find_by(id: 1)
    user_survey = UserSurvey.new(user_survey_params)
    user_survey.user = user
    user_survey.save!
    redirect_to user_survey_path(user_survey)
  end

  def show
    @user_survey = UserSurvey.find_by(id: params[:id])

    if @user_survey.survey_over? #if survey.complete?

    redirect_to thanks_path
  else
    @question = @user_survey.give_question #survey.

  end

end





  private

  def user_survey_params
    params.require(:user_survey).permit(:user_id, :survey_id)
  end

end
