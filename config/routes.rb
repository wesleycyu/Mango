RottenMangoes::Application.routes.draw do

  # get "movies/search", to: 'movies#search'

  get "admin/users/:id/become", to: 'admin/users#become', as: 'become'

  get "admin/users/:id/return", to: "admin/users#return", as: 'return'

  root to: 'movies#landing'

  resources :movies do

    collection do
      get 'search'
    end

    resources :reviews, only: [:new,:create]
  end

  resources :users

  resource :session, only: [:new, :create, :destroy]

  namespace :admin do
    resources :users
  end

end