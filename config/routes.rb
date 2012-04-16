SampleApp::Application.routes.draw do
 
  root to: 'pages#home'
  get 'home' => 'pages#home'
  get 'help' => 'pages#help'

  
end
