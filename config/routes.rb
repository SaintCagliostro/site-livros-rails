Rails.application.routes.draw do
  # DASHBOARD (PRIMEIRO)
  get "dashboard/index"
  root "dashboard#index"

  resources :authors
  # AUTENTICAÇÃO
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # BIBLIOTECA
  resources :books
  resources :generos
  resources :editoras
  resources :authors do
    member do
      post :create_book
    end
  end
  resources :abas
end
