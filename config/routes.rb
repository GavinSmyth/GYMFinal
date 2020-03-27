Rails.application.routes.draw do
  
  resources :user_profiles
  resources :profiles
  get 'profile/index'
  resources :pt_clients
  resources :gym_class_finals
  resources :pts
  resources :personal_trainers
  resources :clients
  resources :recipies
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  resources :gym_classes
  resources :measurements
  devise_for :users
  devise_for :models
  get 'welcome/contact'
  get 'recipie/index'
  
  get "index", to:"posts#index"
  get "index", to:"measurements#index"
  root 'welcome#show'
  get '/validate', :controller=>'measurements', :action=>'index'
  post '/validate', :controller=>'measurements', :action=>'unit_converter'

  get '/search' => 'recipies#index'
  get '/look' => 'recipie#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
