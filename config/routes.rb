Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 				'static_pages#home'
  get 'help'	=>	'static_pages#help'
  get 'about'	=>	'static_pages#about'
  get 'contact'	=>	'static_pages#contact'
  get 'signup'	=>	'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources	:users
end
