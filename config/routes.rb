Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
  resources :games do
    resource :watches, only: [:create, :destroy]
    resource :tags, only: [:update]
  end
  root 'games#index'
end
