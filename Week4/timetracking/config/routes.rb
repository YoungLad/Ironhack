Rails.application.routes.draw do
  get '/', to: 'site#home'

  get '/project', to: 'projects#index'

  get '/project/:id', to:  'projects#show'
  
  get '/project/new', to: 'projects#new'

  post '/project', to: 'projects#create'

  get '/project/:project_id/time_entries', to: 'time_entries#index' 

  get '/project/:project_id/time_entries/new', to: 'time_entries#new'

  post "project/:project_id/time_entries", to: "time_entries#create", as: :project_time_entries
end
