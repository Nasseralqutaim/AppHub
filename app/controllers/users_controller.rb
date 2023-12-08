class UsersController < ApplicationController
  def home
    user = User.first 
    @user_apps = user.user_apps.includes(:app) if user
    @available_apps = App.where.not(id: user.apps.select(:id))
  end
end


# this home This action is intended to prepare data for the user's home page.
# "user = User.first " fething first user and store it in the variable user 
# line 4: Retrieving User's Apps, 
# line 5  is intended to find all apps that the user does not have, "App.where.not(id: user.apps.select(:id))"" queries for apps whose IDs are not in the list of app IDs associated with the user.
# 