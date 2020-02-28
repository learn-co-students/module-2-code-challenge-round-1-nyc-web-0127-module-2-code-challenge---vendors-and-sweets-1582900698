Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors, only: [:show, :index]
  resources :sweets, only: [:show, :index]
  resources :vendor_sweets, only: [:create, :new]
end
