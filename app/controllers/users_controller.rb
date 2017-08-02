class UsersController < ApplicationController 

  def index
    users = User.all
    render json: users
  end

  def show 
    user = User.where(:email => params[:id])
    render json: user, :only => [:name, :id]
  end

end