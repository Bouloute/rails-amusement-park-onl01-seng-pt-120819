Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'application#welcome'

  resources :users, only: [:index, :show, :new, :create]
  get '/signin', to: 'users#new'
  post '/signin', to: 'users#create'
  #get '/users/new', to: 'users#new'
end
