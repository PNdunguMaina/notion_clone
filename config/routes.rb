Rails.application.routes.draw do
  resources :generators, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "generators#index"
end
