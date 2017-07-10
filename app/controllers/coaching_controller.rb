class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    if @query
      if @query.downcase == "i am going to work right now!"
        @answer = ''
      elsif @query.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end

  def ask
  end
end
