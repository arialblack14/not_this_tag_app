Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'tags/:tag', to: 'posts#index', as: :tag

  resources :posts
end
