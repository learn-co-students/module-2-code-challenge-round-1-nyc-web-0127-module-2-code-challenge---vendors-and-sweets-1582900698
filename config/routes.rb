Rails.application.routes.draw do
  resources :vendors, only: [:index, :show, :new, :create]
  resources :sweets, only: [:index, :show]
  resources :vendor_sweets, only: [:new, :create]
end
