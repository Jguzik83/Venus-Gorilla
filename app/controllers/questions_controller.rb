class QuestionsController < ApplicationController
  # def show
  #   @question = Question.find_by_id(params[:id])
  # end

  def new
  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
  puts "********************************************************************"
  params[:choices].each { |choice|
    puts choice[0]
    new_choice = Choice.find_by_id(choice[0])
    new_choice.update_attributes(c_name: choice[1])
    new_choice.save!
  puts "********************************************************************"
    puts choice[1]
  puts "********************************************************************"
  }
  redirect_to new_question_path
  end

end
