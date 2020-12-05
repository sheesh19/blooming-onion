Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :new, :create ] do
    resources :product_reviews, only: [ :create ]
  end
  
  resources :ingredients, only: [ :index, :show, :create ] do
    resources :ingredient_reviews, only: [ :create ]
  end
end
