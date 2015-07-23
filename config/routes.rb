RottenMangoes::Application.routes.draw do

  get "movies/search", to: 'movies#search'

  root to: 'movies#index'

  resources :movies do
    resources :reviews, only: [:new,:create]
  end

  resources :users

  resource :session, only: [:new, :create, :destroy]

  namespace :admin do
    resources :users
  end

end