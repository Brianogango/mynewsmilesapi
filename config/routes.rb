Rails.application.routes.draw do
  resources :bookings
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
# events
  get '/events',to: 'events#show'
  delete '/events/:id', to: 'events#destroy'
  patch '/events/:id', to: 'events#update'
  post '/events/:id/like', to: 'events#like', as: 'like_event'
# bookings
    post 'bookings', to: 'bookings#create'
    get '/bookings/user/:user_id', to: 'bookings#user_bookings', as: 'user_bookings'
end
