Rails.application.routes.draw do
  root to: 'home#index'
	namespace :admin do
		resources :shops
		resources :users
		resources :store_settings
		root to: "shops#index"
	end
	devise_for :users
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
