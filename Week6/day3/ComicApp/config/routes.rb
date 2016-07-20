Rails.application.routes.draw do
  devise_for :users, path: '',
    path_names: { sign_in: "login", sign_up: "signuup"}
    controller: {sessions: "users/sessions" }

  # profile page
  get '/users/:id', to: 'users#show'
end