class IdeasController < ApplicationController

  def index 
    ideas = {ideas: "ideas"}
    render json: ideas
  end

end