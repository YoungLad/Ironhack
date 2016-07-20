Rails.application.routes.draw do
resources :sandwhiches, only: [:index, :show], controller: "sandwhich_views_controller"
	scope '/api' do
  resources :sandwhiches
  resources :ingredients
	post "/sandwhiches/:id/ingredients/add" => "sandwhiches#add_ingredient"
end
end