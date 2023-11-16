class UsersController < ApplicationController
  def home
    user = User.first 
    @user_apps = user.user_apps.includes(:app) if user
    @available_apps = App.where.not(id: user.apps.select(:id))
  end
end
