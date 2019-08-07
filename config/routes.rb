Rails.application.routes.draw do
  resources :users
  resources :news
  root 'news#index'
end
