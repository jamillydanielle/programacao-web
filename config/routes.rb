Rails.application.routes.draw do
  
get '/produtos', to: 'produtos#index'


get '/produtos/:id', to: 'produtos#show', as: 'produto'


get '/produtos/new', to: 'produtos#new', as: 'new_produto'


post '/produtos', to: 'produtos#create'


get '/produtos/:id/edit', to: 'produtos#edit', as: 'edit_produto'


patch '/produtos/:id', to: 'produtos#update'
put '/produtos/:id', to: 'produtos#update'


delete '/produtos/:id', to: 'produtos#destroy'

root to: 'produtos#index'
  
end
