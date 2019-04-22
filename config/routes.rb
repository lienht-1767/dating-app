Rails.application.routes.draw do
  devise_for :users
  get "/admin", to: "admin/base#home"
  root "static_pages#home"
  resources :information_users
  resources :users
end
