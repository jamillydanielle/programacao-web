Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :produtos

  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  authenticated :user do
    root to: 'produtos#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end

  get 'home/sobre'

  get "up" => "rails/health#show", as: :rails_health_check
end


