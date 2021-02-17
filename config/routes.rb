Rails.application.routes.draw do
  root to: 'profiles#index'
  devise_for :users
  resources :profiles
  get '/test', to: 'pages#test'
end
