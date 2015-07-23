RottenMangoes::Application.routes.draw do

  root to: 'movies#index'

  resources :movies do
    resources :reviews, only: [:new,:create]
  end

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  namespace :admin do
    resources :users
  end

end