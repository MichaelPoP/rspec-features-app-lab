class UserController < ApplicationController

  def create
     @user = User.new
  end

  def search
    # binding.pry

    user_params = params[:zipcode]
    @user.to_s = User.create user_params
    if @user.save
    
    cookies[:zipcode] = params[:zipcode]
    end

    @zipcode = params[:zipcode]
  end
end