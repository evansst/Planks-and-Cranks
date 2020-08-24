Rails.application.routes.draw do
  resources :listings
  resources :users

  post '/login', to: 'authentication#login'
end
