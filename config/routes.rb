Rails.application.routes.draw do
  get "/admin", to: "admin/base#home"
  root "static_pages#home"
end
