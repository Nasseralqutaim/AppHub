class UsersController < ApplicationController
  def home
    user = User.first 
    @user_apps = user.user_apps.includes(:app) if user
  end
end
