class UsersController < ApplicationController
  before_filter :find_user, :only => [:edit, :update, :destroy, :show]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration Succesful"
      redirect_to root_url

    else
      render :action => 'new'
    end
  end
  
  def edit
  end

  def update

    if @user.update_attributes(params[:user])
      flash[:notice] = "Succesfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
  
  def find_user
    if params[:id] == 'current'
      @user = current_user
    else
      @user = User.find(params[:id])
    end
  end
end
