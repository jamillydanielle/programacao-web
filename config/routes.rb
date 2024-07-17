Rails.application.routes.draw do


  devise_for :users, controllers: {
  sessions: 'users/sessions'
}

  
  devise_scope :user do
    # Define a página de login do Devise como a rota raiz
    root to: 'devise/sessions#new'
  end

  namespace :admin do
    resources :dashboard, only: [:index]
  end


  delete '/logout', to: 'devise/sessions#destroy', as: :logout


  get '/sobre', to: 'home#sobre', as: 'home_sobre'
  resources :produtos

  resources :users, only: [:new, :create]

  resource :session, only: [:new, :create, :destroy] # Singular resource

  namespace :admin do
    resources :dashboard, only: [:index]
  end
end
