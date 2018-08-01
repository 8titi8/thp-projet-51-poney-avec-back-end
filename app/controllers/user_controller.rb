class UserController < ApplicationController

  def new

  end

  def create
    poney = User.new
    poney.username = params[:username]
    poney.bio = params[:bio]
    poney.save
    @name = params[:username]
    @poney_page = poney.username
    if poney.valid?
      render 'create'
    else
      redirect_to '/poney/error'
    end
  end

  def show
    the_poney = User.find_by(username: params[:username])
   @username = the_poney.username
   @bio = the_poney.bio
  end

  def error

  end

end
