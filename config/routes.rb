Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :animals
  resources :contacts
  resources :favorites, only: %i[index]
end
