Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
	resources :motorcycles
	resources :brands
	resources :parts
	resources :sections

	devise_for :users
	resources :options

	devise_for :admins
	resources :bikeposts
	resources :searches
	resources :partsearches
	resources :posts
	resources :reviews


	resources :subscribers, only: [:new, :create]	
	resources :cooperations, only: [:new, :create]	
	resources :fastorders, only: [:new, :create]	

	
	resources :orders
	#resources :line_products
	resources :carts
	
	get 'admin' => 'pages#admin', as: :admin

	get 'index' => 'pages#index', as: :index
	get 'soon' => 'pages#soon', as: :soon
	get 'category-list' => 'pages#categorylist', as: :categorylist
	get 'cooperation' => 'pages#cooperation', as: :cooperation
	get 'about' => 'pages#about', as: :about
	get 'regards' => 'pages#regards', as: :regards
	get 'contacts' => 'pages#contacts', as: :contacts

	post 'line_products/:id/add' => "line_products#add_quantity", as: "line_product_add"
	post 'line_products/:id/reduce' => "line_products#reduce_quantity", as: "line_product_reduce"
	get 'line_products/:id' => "line_iproducts#show", as: "line_product"
	delete 'line_products/:id' => "line_products#destroy"
	post 'line_products' => "line_products#create"

	root to: 'pages#index'

	resources :categories

	resources :items do
		resources :photos
		resources :reviews
		get :who_bought, :on => :member
	end	


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
