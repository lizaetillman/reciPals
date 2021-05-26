Rails.application.routes.draw do

  resources :users
  

  get '/logout', to: 'sessions#logout'
  get '/login', to: 'sessions#login'

  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  
  resources :cookbooks do
    resources :recipes
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
