Rails.application.routes.draw do
  resources :properties

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  root 'public#main'

  get 'dashboard' => 'dashboard#index'
  # get 'properties' => 'dashboard#properties'
  get 'reports' => 'dashboard#reports'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
