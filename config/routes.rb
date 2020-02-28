Rails.application.routes.draw do
  resources :vendor_sweets
  resources :sweets, only: [:index, :show, :new, :create, :edit, :update]
  resources :vendors, only: [:index, :show, :new, :create, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
