Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :experiences, only: [:index, :new, :create, :show]

end
