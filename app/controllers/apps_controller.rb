class AppsController < ApplicationController
  def index
    user = User.first
    @available_apps = App.where.not(id: user.apps.select(:id))
  end
end
