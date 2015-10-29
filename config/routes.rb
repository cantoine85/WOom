Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  get 'new_admin' => 'experiences#new_admin'

  resources :experiences, only: [:index, :new, :create, :show]

  namespace :account do
    resources :experiences
  end

  # namespace :admin do
  #   resources :experiences
  # end

end
