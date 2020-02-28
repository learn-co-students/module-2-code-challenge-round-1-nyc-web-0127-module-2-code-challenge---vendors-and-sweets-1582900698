Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  resources :vendors, only: [:show, :index]
  resources :sweets, only: [:show, :index]
end
