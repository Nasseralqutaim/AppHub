class SessionsController < ApplicationController
  def create
    user = User.find_by(login: params[:login])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      if user.user_apps.empty?
        default_apps = App.where(default_status: true)
        default_apps.each do |app|
          UserApp.create(user_id: user.id, app_id: app.id)
        end
      end
  
      redirect_to '/home'
    else
      render json: {}, status: :unauthorized
    end
  end

  def new
    render :new
  end 
end