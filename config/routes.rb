Rails.application.routes.draw do
  root 'products#index'
  
  resources :products, param: :asin, only: [:index, :show, :new, :create]
end
