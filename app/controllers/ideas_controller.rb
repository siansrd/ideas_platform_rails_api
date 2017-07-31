class IdeasController < ApplicationController

  def index 
    ideas = Idea.all
    render json: ideas, :include => [
      {:user => {:only => :name}},
      {:category => {:only => :name}}
    ]
  end

  def show
    idea = Idea.find(params[:id])
    render json: idea.as_json({
      include: :comments
    })
  end

end