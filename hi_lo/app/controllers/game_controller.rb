class GameController < ApplicationController

  def start

    @game_start = "Ready"
    win = rand(50).to_s
    cookies[:winner] = win.to_yaml
    redirect_to '/game/play'

  end

  def play

    @winner = YAML.load(cookies[:winner])

    @guess = params[:guess]

    if @guess.to_i < @winner.to_i
      @answer = "Too low! Guess again"
    elsif @guess.to_i > @winner.to_i
      @answer = "Too high! Guess again"
    elsif @guess.to_i == @winner.to_i
      @answer = "You win!"
    end


  end

end
