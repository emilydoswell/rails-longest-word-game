class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @guess = params[:word].downcase.split("")
    @letters = params[:letters].downcase.split
  
    if @guess.all? { |letter| @guess.count(letter) <= @letters.count(letter) } == true
      @message = "true"
    else
      @message = "false"
    end
  end
end
