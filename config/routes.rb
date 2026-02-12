Rails.application.routes.draw do
  # AUTENTICAÇÃO (PRIMEIRO)
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  
  # BIBLIOTECA
  resources :books
  resources :generos
  resources :editoras
  resources :authors
  resources :abas
  resources :sessions
  resources :accounts


  # config/routes.rb
  resources :authors do
    member do
      post :create_book
    end
  end

  root "books#index"
end
