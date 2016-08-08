Rails.application.routes.draw do
  devise_for :users, path: '',
  					 path_names: {sign_in: 'login', sign_up: 'signup'}
  get '/users/:id', to: 'users#show'
  get '/', to: 'activities#index'
  get '/custom_route', to: 'activities#custom_route'
  resources :activities
  resources :users
  resources :locations
end
