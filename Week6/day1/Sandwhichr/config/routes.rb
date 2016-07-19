Rails.application.routes.draw do
resources :sandwhiches, only: [:index, :show], controller: "sandwhich_views_controller"
	scope '/api' do
  resources :sandwhiches
  resources :ingredients
	post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
end
end