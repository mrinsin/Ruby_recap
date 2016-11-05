class MainController < ApplicationController
  def index
  end

  def answers

    #if the key user name exists and has a value, and if theat value if not just a bunch of spaces, save the value of theat key in a cookie
    if params.has_key?(:user_name) && !params[:user_name].strip.empty?
      cookies[:user_name] = params[:user_name]
    end

    #if the number entered by the user is an even number
    if params[:number].to_i.even?
      #display this text
      @result_string = "Your number is even"
      flash.now[:notice] = "You've sent over an even number!"
      #and if it is odd
    elsif params[:number].to_i.odd?
      #display this string
      @result_string = "Your number is odd"
      flash.now[:alert] = "You've sent over an ODD number!"
    end

  end
end
