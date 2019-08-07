Rails.application.routes.draw do
  resources :products, param: :asin, only: [:index, :show, :new, :create]
end
