class QuestionsController < ApplicationController
  def answer
    @message = params[:message]
    if params[:message].present?
      if params[:message] == 'I am going to work'
        @answer = 'Great!'
      elsif params[:message].include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end

  def ask
    # raise
  end
end
