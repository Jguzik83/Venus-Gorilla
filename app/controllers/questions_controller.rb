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
  params["choices"].each { |choice|
    puts choice[1]
  }
  puts "********************************************************************"
  return 0
  end

end
