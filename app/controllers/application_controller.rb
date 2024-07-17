class ApplicationController < ActionController::Base
  # Método para redirecionar após o login

  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)  # Supondo que você tenha um modelo Admin para administradores
      admin_dashboard_index_path  # Rota da dashboard do administrador
    else
      produtos_path  # Rota para a listagem de produtos
    end
  end
end
