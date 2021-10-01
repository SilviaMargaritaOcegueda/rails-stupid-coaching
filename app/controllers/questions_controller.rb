# frozen_string_literal:true

# stupid coaching class
class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]

    @answer = 'I don\'t care, get dressed and go to work!'
    @answer = 'Silly question, get dressed and go to work!' if @question[-1] == '?'
    @answer = 'Great!' if @question == 'I am going to work'
  end
end
