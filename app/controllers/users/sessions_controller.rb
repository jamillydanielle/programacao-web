class Users::SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_root_path # ou a rota específica para o dashboard do administrador
    else
      produtos_path
    end
  end
end
