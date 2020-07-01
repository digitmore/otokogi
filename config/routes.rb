Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents
  resources :users
end
