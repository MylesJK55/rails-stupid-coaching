class QuestionsController < ApplicationController
  def ask
  end
  
  def answer
    @question = params[:question] # Capture the question from params
    @answer = compute_answer(@question) # Compute the answer
  end

  private

  def compute_answer(question)
    if question == "I am going to work"
      "Great!"
    elsif question.ends_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
