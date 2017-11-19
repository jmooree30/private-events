Rails.application.routes.draw do

  resources :events
  resources :static_pages
  resources :users
  root 'static_pages#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
