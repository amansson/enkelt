Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  get "products/:id/guide", to: "products#guide", as: "product_guide"
  get "products/:id/inspiration", to: "products#inspiration", as: "product_inspiration"

  get "/components", to: "pages#components"

end
