Rails.application.routes.draw do
  devise_for :users, only: []

  resources :login, only: [:create], controller: :users

  resources :videos do
    resources :comments, only: [:index, :create], module: :videos
  end

  resources :users, only: [] do
    resources :videos, only: [:index], module: :users do
      get :comments, on: :collection, controller: :comments, action: :index
    end
  end
end
