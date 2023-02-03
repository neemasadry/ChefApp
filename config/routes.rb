Rails.application.routes.draw do
  namespace :admin do
      resources :users

      root to: "users#index"
    end
  devise_for :users
  root 'static#index'
  get 'static/about'
  get 'static/pricing'
  get 'static/privacy'
  get 'static/terms'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
