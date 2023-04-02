Rails.application.routes.draw do
 get '/', to: 'users#index'
 post '/users', to: 'users#create'
 get '/users/:id', to: 'users#show'
 patch '/users/:id', to: 'users#update'
delete '/users/:id', to: 'users#destroy'
# session
    post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
