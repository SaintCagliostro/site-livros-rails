Rails.application.routes.draw do
  get "authors/index"
  get "authors/show"
  get "editoras/index"
  get "editoras/show"
  get "books/index"
  root 'books#index'
  resources :books
  resources :authors
  resources :editoras
  resources :generos
  resources :abas
  get "abas/index"
  get "abas/show"
  get "abas/new"
  get "abas/create"
  get "abas/edit"
  get "abas/update"
  get "abas/destroy"

  resources :abas, only: [:index] do
    member do
      get :books_by_genero
      get :books_by_author
      get :books_by_editora
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
