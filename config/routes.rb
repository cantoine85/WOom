Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :experiences, only: [:index, :new, :create, :show]

  namespace :account do
    resources :experiences
  end

end
