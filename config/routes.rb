Rails.application.routes.draw do
  get 'attendances/create'
  get 'invitations/create'
  resources :attendances
  resources :events
  resources :static_pages
  resources :users
  resources :invitations
  root 'static_pages#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
