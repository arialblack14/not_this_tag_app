Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'post', to: 'static_pages#post'

  resources :posts
end
