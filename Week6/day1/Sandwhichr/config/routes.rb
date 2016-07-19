Rails.application.routes.draw do

  resources :sandwhiches
  resources :ingredients
	post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"

end