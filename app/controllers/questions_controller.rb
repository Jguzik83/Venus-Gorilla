class QuestionsController < ApplicationController
  # def show
  #   @question = Question.find_by_id(params[:id])
  # end

  def new
    @survey = User.find_by_id(session[:user_id]).surveys.last
  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
  puts "********************************************************************"
  params[:choices].each { |choice|
    new_choice = Choice.find_by_id(choice[0])
    new_choice.update_attributes(c_name: choice[1])
    new_choice.save!
  }
  puts "********************************************************************"
  params[:question].each do |q|
    new_question = Question.find_by_id(q[0])
    new_question.update_attributes(q_name: q[1])
    new_question.save!
  end
  puts "********************************************************************"
  redirect_to new_question_path
  end

end
