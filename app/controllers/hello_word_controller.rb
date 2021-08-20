class HelloWordController < ApplicationController

  def index
    render json: @title
  end
end
