Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :organizations, only: [:index, :create, :new, :show]
end
