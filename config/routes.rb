Rails.application.routes.draw do
  get "/" => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "users/index" => "users#index"
  get "users/new" => "users#new"
  get "users/:id" => "users#show"
  post "users/create" => "users#create"

  get "visiters/index" => "visiters#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
