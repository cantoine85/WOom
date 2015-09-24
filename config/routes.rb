Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :experiences, only: [:index, :new, :create, :show]

end
