Rails.application.routes.draw do
  get 'status/status'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/status', to: 'status#status'
end
