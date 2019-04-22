Rails.application.routes.draw do
  devise_for :users
  get "/admin", to: "admin/base#home"
  root "static_pages#home"
  resources :information_users
  resources :users
  resources :conversations, only: [:new, :create, :show] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end
