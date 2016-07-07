
Rails.application.routes.draw do
  root "site#home"

  get "/text_inspection", to: "text_inspection#new"

  # ***** New *****
  post "/text_inspection", to: "text_inspection#create"

  get "/asciis", to: "asciis_controller#new"

  post "/asciis", to: "asciis_controller#create"

  get "/placeholder", to: ""
end