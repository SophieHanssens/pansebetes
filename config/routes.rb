Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  root to: 'pages#home'

  resources :animals
  resources :contacts
  resources :favorites, only: %i[index create destroy]
  get '/dashboard', to: 'pages#dashboard'
end
