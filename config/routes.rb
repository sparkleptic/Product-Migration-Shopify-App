Rails.application.routes.draw do
  root 'stars#index'
  resources :stars
  get 'match_sku', :to => 'stars#update_product', via: [:get, :post]
  post 'match_sku', :to => 'stars#update_product', via: [:get, :post]
  get 'migrate', :to => 'stars#migrate', via: [:get, :post]
  post 'migrate', :to => 'stars#migrate', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
