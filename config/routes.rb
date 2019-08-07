Rails.application.routes.draw do
  root 'sessions#new'
  resources :users
  resources :news
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
