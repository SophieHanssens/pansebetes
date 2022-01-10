Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  root to: 'pages#home'

  resources :animals, only: %i[show index new create]
  resources :contacts
  resources :favorites, only: %i[index create]
  get '/dashboard', to: 'pages#dashboard'
end
