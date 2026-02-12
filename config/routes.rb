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
  
  root "books#index"
end
