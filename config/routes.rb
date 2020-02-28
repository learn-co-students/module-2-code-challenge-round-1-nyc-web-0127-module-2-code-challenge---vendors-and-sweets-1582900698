Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendor_sweets, only: [:new, :create]

  get '/sweets', to: "sweets#index", as: "sweets"
  get '/vendors', to: "vendors#index", as: "vendors"
  get '/sweets/:id', to: "sweets#show"
  get '/vendors/:id', to: "vendors#show"

end
