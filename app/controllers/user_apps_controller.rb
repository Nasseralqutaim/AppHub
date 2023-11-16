class UserAppsController < ApplicationController
 # POST /user_apps
 def create
  user = User.first 
  app_ids = params[:app_ids] 
  app_ids.each do |app_id|
    UserApp.create(user_id: user.id, app_id: app_id)
  end

  # Set the flash message
  flash[:notice] = 'Apps added successfully.'

  # Redirect to the home page
  redirect_to '/home'
end


 # DELETE /user_apps/:id
 def destroy
  @user_app = UserApp.find(params[:id])
  @user_app.destroy
  redirect_to '/home', notice: 'App removed successfully.'
end 

end
