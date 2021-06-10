Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'


  get '/users/new', to: 'users#new', as: 'new_user'
  
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  
  get '/signin', to: 'sessions#new',  as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session', to: 'sesssion#destroy'

end
