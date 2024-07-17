# app/controllers/admin/dashboard_controller.rb
module Admin
  class DashboardController < ApplicationController
    before_action :authorize_admin

    def index
      @total_users = User.count
      @total_produtos = Produto.count
      @produtos = Produto.includes(:user)

      # Assumindo que a associação entre Produto e User está correta
    end

    private

    def authorize_admin
      redirect_to root_path, alert: 'Acesso negado!' unless current_user&.eh_admin?
    end
  end
end
