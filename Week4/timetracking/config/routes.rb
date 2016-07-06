Rails.application.routes.draw do
  get '/', to: 'site#home'

  get '/project', to: 'projects#index'

  get '/project/:id', to:  '/projects#show'
end
