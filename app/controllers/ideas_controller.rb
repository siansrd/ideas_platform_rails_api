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

  def create
    idea = Idea.new(idea_params)
    if idea.save
      render json: idea
    else
      render json: { status: :create_failed }
    end
  end

  def update
    idea = Idea.find(params[:id]) 
    if idea.update_attributes(idea_params)
      render :json => idea
    else
      render :json => { status: :update_failed }
    end
  end

  def destroy
    idea = Idea.find(params[:id])
    if idea.destroy!
      render :json => { status: :success  }
    else
      render :json => { status: :delete_failed }
    end
  end

  private

  def idea_params
    params.require(:idea).permit([:title, :description, :summary, :user_id, :category_id, :votes, :views])
  end


end