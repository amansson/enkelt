Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :tasks

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  get "products/:id/guide", to: "products#guide", as: "product_guide"
  get "products/:id/inspiration", to: "products#inspiration", as: "product_inspiration"

  get "/components", to: "pages#components"
  get "/js", to: "pages#js"

  get "products/:id/marked", to: "products#mark_as_assembled", as: "product_marked"
  patch "products/:id/marked", to: "products#set_mark_as_assembled", as: "set_product_marked"
end
