class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :create, Produto
      can :update, Produto
      can :destroy, Produto
    end
  end
end
