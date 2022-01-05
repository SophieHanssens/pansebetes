Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :animals, only: %i[show index]
  resources :contacts, only: %i[index show new]
end
