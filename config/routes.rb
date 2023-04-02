Rails.application.routes.draw do
# user
 get '/', to: 'users#index'
 post '/users', to: 'users#create'
 get '/users/:id', to: 'users#show'
 patch '/users/:id', to: 'users#update'
delete '/users/:id', to: 'users#destroy'
# session
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
# message
 get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'
  delete '/messages/:id', to: 'messages#destroy'
end
