Rails.application.routes.draw do
 get '/', to: 'users#index'
 post '/users', to: 'users#create'
 get '/users/:id', to: 'users#show'
 post '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end
