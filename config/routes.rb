Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  
  get "products/:id/guide", to: "products#guide"
  get "products/:id/inspire", to: "products#inspire"
  
  get "/components", to: "pages#components"
end
