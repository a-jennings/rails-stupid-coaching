class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:ask]
    if @user_input == 'I am going to work'
      @coach_output = 'Great!'
    elsif @user_input.include? '?'
      @coach_output = 'Silly question, get dressed and go to work!'
    else
      @coach_output = "I don't care, get dressed and go to work!"
    end
    params[:output] = @coach_output
  end
end
