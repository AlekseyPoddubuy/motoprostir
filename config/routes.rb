Rails.application.routes.draw do

	mount Ckeditor::Engine => '/ckeditor'

# will be developed in future
#	resources :motorcycles
#	resources :brands
#	resources :parts
#	resources :sections
#	resources :bikeposts
#	resources :options
#	resources :partsearches
#	resources :reviews
#   resources :subscribers, only: [:new, :create]	
	#resources :line_products


	devise_for :users
	devise_for :admins
	resources :searches
	resources :posts
	resources :cooperations, only: [:new, :create]	
	resources :fastorders, only: [:new, :create]	
	resources :orders
	resources :carts
	resources :categories
	resources :items do
		resources :photos
		resources :reviews
		get :who_bought, :on => :member
	end	

	root to: 'pages#index'

	get 'admin' => 'pages#admin', as: :admin

	get 'index' => 'pages#index', as: :index
	get 'soon' => 'pages#soon', as: :soon
	get 'category-list' => 'pages#categorylist', as: :categorylist
	get 'cooperation' => 'pages#cooperation', as: :cooperation
	get 'regards' => 'pages#regards', as: :regards

	post 'line_products/:id/add' => "line_products#add_quantity", as: "line_product_add"
	post 'line_products/:id/reduce' => "line_products#reduce_quantity", as: "line_product_reduce"
	get 'line_products/:id' => "line_iproducts#show", as: "line_product"
	delete 'line_products/:id' => "line_products#destroy"
	post 'line_products' => "line_products#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
