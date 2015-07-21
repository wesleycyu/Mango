RottenMangoes::Application.routes.draw do

  get 'users/new'

  get 'users/create'

  root to: 'movies#index'

  resources :movies

  resources :users, only: [:new, :create]

end
