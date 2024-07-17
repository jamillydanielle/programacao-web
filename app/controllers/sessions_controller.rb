# app/controllers/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController

  protected

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_dashboard_index_path
    else
      root_path
    end
  end
  
  # DELETE /resource/sign_out
  def destroy
    super
  end

  # GET /resource/sign_out
  def destroy_get
    sign_out current_user
    redirect_to root_url, notice: "Logged out successfully."
  end
end
