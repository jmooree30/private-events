Rails.application.routes.draw do
  get 'events/:resources'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :static_pages
  resources :users
  root 'static_pages#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
