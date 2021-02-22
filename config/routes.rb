Rails.application.routes.draw do
	root to: 'categories#index'

	resources :categories, only: [:index] do
		resources :products, only: [:index]
	end

	resources :order_items, path: '/cart/items'
	get '/cart', to: 'order_items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
