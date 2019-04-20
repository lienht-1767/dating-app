Rails.application.routes.draw do
  devise_for :users
  get "/admin", to: "admin/base#home", :as => "admin"
  root "static_pages#home"
  resources :information_user
  namespace :admin do
    resources :blogs
    resources :genders
    resources :users
  end
end
