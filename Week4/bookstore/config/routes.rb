Rails.application.routes.draw do
  # get "/", to: "books#index"
  root "books#index"

  resources :books, only: [:new, :create ]
end
