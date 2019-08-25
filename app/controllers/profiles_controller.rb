class ProfilesController < ApplicationController
  def show
    @user = User.find_by(user_name: params[:user_name])
    @posts = @user.posts #.order('created at DESC')
  end
end
