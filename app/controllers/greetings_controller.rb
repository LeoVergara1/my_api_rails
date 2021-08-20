class GreetingsController < ApplicationController
  def hello
    @title = "Hola mundo"
    render json: @title
  end
end
