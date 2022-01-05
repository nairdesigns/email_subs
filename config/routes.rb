require 'sidekiq/web'

Rails.application.routes.draw do
  resources :projects
  resources :homes
  resources :controllers
  resources :projects do
    resources :tasks

  end
  
    authenticate :user, lambda {|u| u.admin?} do
      mount Sidekiq::Web => '/sidekiq'
      
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # devise_for :users 
  root to: 'projects#index'
end
