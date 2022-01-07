Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :animals, only: %i[show index new create]
  resources :contacts
end
