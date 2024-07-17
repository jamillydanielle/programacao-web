class UsersController < ApplicationController
 # before_action :authenticate_user! # Garante que o usuário esteja autenticado para acessar qualquer ação
  #before_action :set_user, only: [:edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/:id/edit
  def edit
    authorize_user_edit # Exemplo de autorização personalizada
  end

  # PATCH/PUT /users/:id
  def update
    authorize_user_edit # Verificação de autorização antes de atualizar o usuário

    if @user.update(user_params)
      redirect_to root_url, notice: 'Usuário atualizado com sucesso!'
    else
      render :edit
    end
  end

  # DELETE /users/:id
  def destroy
    authorize_user_edit # Verificação de autorização antes de excluir o usuário

    @user.destroy
    redirect_to root_url, notice: 'Usuário deletado com sucesso!'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Verificação de autorização customizada para edição/destruição de usuário
  def authorize_user_edit
    unless current_user.admin? || current_user == @user
      redirect_to root_url, alert: 'Você não tem permissão para realizar esta ação.'
    end
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:nome, :login, :password, :eh_admin)
  end
end
