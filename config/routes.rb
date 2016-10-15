Rails.application.routes.draw do
  root 'static_pages#home'
  get 'post', to: 'static_pages#post'
end
