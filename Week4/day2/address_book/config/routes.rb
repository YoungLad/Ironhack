Rails.application.routes.draw do

  get '/contacts/new', to: 'contact#new'

  post '/contacts', to: 'contact#create'

  get '/contacts', to: 'contact#index'

  get 'contacts', to: 'contacts#show'
end
