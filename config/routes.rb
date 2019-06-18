Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  
  get "products/:id/guide", to: "products#guide"
  get "products/:id/inspiration", to: "products#inspiration"
  
  get "/components", to: "pages#components"


  post 'one_star', to: 'reviews#one_star', as: :one_star
  post 'two_stars', to: 'reviews#two_stars', as: :two_stars
  post 'three_stars', to: 'reviews#three_stars', as: :three_stars
  post 'four_stars', to: 'reviews#four_stars', as: :four_stars
  post 'five_stars', to: 'reviews#five_stars', as: :five_stars


end
