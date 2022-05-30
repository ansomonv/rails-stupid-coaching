class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @question = params[:question]
  # at question n'est pas vide
    if @question == ''
      return @answer = ''
  # at question == i am going to work
    elsif @question == 'I am going to work'
      return @answer = "Great!"
  # at question finit par ?
    elsif @question.chars.last == '?'
      return @answer = 'Silly question, get dressed and go to work!'
  # at question == autre
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
