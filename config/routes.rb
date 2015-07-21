RottenMangoes::Application.routes.draw do

  root to: 'movies#index'

  resources :movies

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]

end
