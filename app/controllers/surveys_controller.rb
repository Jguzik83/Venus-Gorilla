class SurveysController < ApplicationController

  def index
    @user = User.find_by(id: session[:user_id])
    @surveys = Survey.all
  end

  def show
     session[:user_id] = 1
    @user = User.find_by(id: session[:user_id])
    @user.id = 1
    @survey = Survey.find_by(id: params[:id])
    @user_survey = UserSurvey.find_by(id: params[:id])

    # @questions = Questions.where(survey_id: @survey.id)
  end

  def new
   @user = User.find_by(id: session[:user_id])
   @survey = Survey.new
 end

 def create
  user = User.find_by(id: session[:user_id])
  survey = Survey.new(survey_params)
  survey.user = user
  survey.save
  redirect_to new_question_path
end

def edit
  @user = User.find_by(id: session[:user_id])
  @survey = Survey.find_by(id: params[:id])
end

def update
  user = User.find_by(id: session[:user_id])
  survey = Survey.find_by(id: params[:id])
  survey.update(survey_params)
  redirect_to user_path(user)
end

private

def survey_params
  params.require(:survey).permit(:title, :description, :user_id)
end

end
