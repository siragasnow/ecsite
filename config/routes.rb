Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :items, except: [:destroy]
    get 'orders/index'
    get 'orders/show'
    get 'genres/index'
    get 'genres/edit'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end

  devise_for :customer, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations',
  }

  scope module: :customer do
    root 'homes#top'
    get 'homes/about'
    get 'deliveries/index'
    get 'deliveries/edit'
    get 'orders/index'
    get 'orders/new'
    get 'orders/show'
    get 'cart_items/index'
    get 'items/index'
    get 'items/show'
    get 'customers/show'
    get 'customers/edit'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
