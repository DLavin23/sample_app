SampleApp::Application.routes.draw do
 
  get "users/new"

  root to: 'pages#home'
  match '/signup', to: 'users#new'
  
  match '/help', to: 'pages#help' 
  match '/about', to: 'pages#about' 
  match '/contact', to: 'pages#contact'
  
end
