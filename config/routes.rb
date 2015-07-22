RottenMangoes::Application.routes.draw do

  root to: 'movies#index'

  resources :movies do
    resources :reviews, only: [:new,:create]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

end
