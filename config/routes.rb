# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_page#home'
  
  get '/help',   to: 'static_page#help'
  get '/about',  to: 'static_page#about'
  get '/contact', to: 'static_page#contact'
  get '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
