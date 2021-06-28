Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :appointments
  resources :doctors
  resources :homes
  
  root 'homes#index'
end
