Rails.application.routes.draw do
  root 'static_pages#home'
  get 'login', to: 'static_pages#login'
end
