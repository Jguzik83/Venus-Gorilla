class SurveysController < ApplicationController

  def index
    @user = User.find_by(id: session[:user_id])
    @surveys = Survey.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @survey = Survey.find_by(id: params[:id])
    @questions = Questions.where(survey_id: @survey.id)
  end

  def new
    @user = @user = User.find_by(id: session[:user_id])
    @survey = Survey.new
  end

  def create
    user = User.find_by(id: session[:user_id])
    survey = Survey.new(survey_params)
    survey.user = user
    survey.save
    redirect_to
  end

  def edit
  end

  private

  def survey_params
    params.require(:survey).permit(:title, :description, :user_id)
  end

end
