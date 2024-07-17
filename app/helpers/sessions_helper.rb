# app/helpers/sessions_helper.rb
module SessionsHelper
  # Faz login do usuário passado
  def log_in(user)
    session[:user_id] = user.id
  end

  # Retorna o usuário atual logado (se houver)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Verifica se o usuário está logado
  def logged_in?
    !current_user.nil?
  end

  # Faz logout do usuário atual
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
