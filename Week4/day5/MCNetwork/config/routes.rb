Rails.application.routes.draw do
  root "conerts#index"

  resources :concerts
end
