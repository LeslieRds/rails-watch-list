Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index", as: :lists
  # get "lists/new", to: "lists#new", as: :new_list
  # get "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :list
  resources :bookmarks, :lists
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
