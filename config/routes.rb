Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :services, only: [:index, :show, :create]
  resources :supports, only: [:index, :show, :create]
end
