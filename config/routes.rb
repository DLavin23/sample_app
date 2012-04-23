SampleApp::Application.routes.draw do
 
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  root to: 'pages#home'
  
  match '/signup', to: 'users#new'
  match 'signin', to: 'sessions#new'
  match 'signout', to: 'sessions#destroy', via: :delete
  
  match '/help', to: 'pages#help' 
  match '/about', to: 'pages#about' 
  match '/contact', to: 'pages#contact'
  
end
