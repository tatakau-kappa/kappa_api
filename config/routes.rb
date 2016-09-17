Rails.application.routes.draw do
  devise_for :users, only: []

  get :ping, to: 'application#ping'

  resources :login, only: [:create], controller: :users

  resources :videos do
    resources :comments, only: [:index, :create], module: :videos
  end

  resources :mobile_devices, only: [:create]

  resource :points, only: [:show]

  resources :users, only: [] do
    resources :videos, only: [:index], module: :users do
      get :comments, on: :collection, controller: :comments, action: :index
    end
  end
end
