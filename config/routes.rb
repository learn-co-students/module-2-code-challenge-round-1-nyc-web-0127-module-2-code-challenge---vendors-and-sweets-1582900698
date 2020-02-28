Rails.application.routes.draw do

  resources :vendor_sweets, only: [:new, :create]
  resources :vendors, only: [:show, :index, :new, :create]


end


