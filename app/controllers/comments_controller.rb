class CommentsController < ApplicationController 

  def index 
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: { status: :create_failed }
    end
  end

  def comment_params
    params.require(:comment).permit([:idea_id, :user_id, :comment_id, :votes, :text])
  end

end