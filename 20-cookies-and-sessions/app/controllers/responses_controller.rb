class ResponsesController < ApplicationController
  before_action :define_question, :define_response

  def new
    @question = define_question
  end

  def create
      session[:score] ||= 0
      #@number_correct = session[:score]
      response = Response.create(response_params)
      if response.question.correct_answer == response.answer
          #@number_correct = @number_correct + 1
          session[:score] = session[:score] + 1
          flash[:message] = "Good job! Right answer."
      else
          flash[:message] = "You have brought shame to your family."
      end
      puts session[:score]
      redirect_to '/random-question'
  end

  private

  def response_params
    params.require(:response).permit(:answer_id, :question_id)
  end

  def define_question
      @question = Question.order("RANDOM()").limit(1)[0]
  end

  def define_response
      @questionResponse = Response.new({ question: @question })
  end


end
