class UsersController < ApplicationController
  def home
    user = User.first 
  end
end
