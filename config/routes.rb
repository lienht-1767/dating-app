Rails.application.routes.draw do
  devise_for :users
  get "/admin", to: "admin/base#home", :as => "admin"
  root "static_pages#home"
  resources :information_users
  resources :users
  resources :conversations, only: [:new, :create, :show] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
  namespace :admin do
    resources :blogs
    resources :genders
    resources :users
  end
end
