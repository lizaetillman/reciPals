Rails.application.routes.draw do

  get '/auth/:provider/callback' => 'sessions#omniauth'
  
  get '/logout', to: 'sessions#logout'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  
  resources :users

  resources :cookbooks do
    resources :recipes
  end



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
