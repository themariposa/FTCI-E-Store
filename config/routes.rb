Rails.application.routes.draw do
  devise_for :users
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'add_to_cart' => 'cart#add_to_cart'

  post 'order_complete' => 'cart#order_complete'

  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
