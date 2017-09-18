Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :products do
  	member do
  		get "promo_code", as: "promo_code"
  	end
  end
  resources :categories do
  	member do
  		get 'category_product', as: "products"
  	end
  end
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
