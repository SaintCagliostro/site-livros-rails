Rails.application.routes.draw do
  # DASHBOARD (PRIMEIRO)
  get "dashboard/index"
  root "dashboard#index"

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
