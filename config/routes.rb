Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  resources :doctors
  resources :homes
  
  root 'homes#index'
end
