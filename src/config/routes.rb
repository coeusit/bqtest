Rails.application.routes.draw do
  get 'apiv1/query'
  root 'page#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
