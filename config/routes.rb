Rails.application.routes.draw do
 get '/', to: 'users#index'
 post '/users', to: 'users#create'
end
