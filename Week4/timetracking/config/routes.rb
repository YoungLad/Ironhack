Rails.application.routes.draw do
  get '/', to: 'site#home'

  resources :projects, only: [:index, :show, :new, :create] do
  	resources :time_entries, except: [:show]
  end

end
