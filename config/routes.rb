Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
  # get '/vendors', to: "vendors#index"
  # get '/vendors_sweets/new', to: "vendors_sweets#new"
  # post 'vendors_sweets', to: "vendor_sweets#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
