class QuestionsController < ApplicationController

  # QUESTIONS = {
  #   1 => { answer: "Great!", ask: "I am going to work!" },
  #   2 => { answer: "Silly question, get dressed and go to work!", ask: "contains ! or . at the end" },
  #   3 => { answer: "I don't care, get dressed and go to work!", ask: "contains ? at the end" }
  # }

  def index
    @answers = Answer.all
  end

  def ask
  # method to acquire input from user
end

def answer
  @question = params[:user_question]
  if @question == "I am going to work"
    @answer = "Great!"
  elsif @question.include?("?")
    @answer = "Silly question, get dressed and go to work!"
  else
    @answer = "I don't care, get dressed and go to work!"
  end

end
  # method to determine what text to show according to question asked
end


# @answer = QUESTIONS.select { |id, r| r[:ask] == @ask }
