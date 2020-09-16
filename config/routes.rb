Rails.application.routes.draw do
  devise_for :admins, controller: {
    sessiions: 'admin/sessions',
  }

  namespace :admin do
    get 'orders/index'
    get 'orders/show'
    get 'items/index'
    get 'items/show'
    get 'items/new'
    get 'items/edit'
    get 'genres/index'
    get 'genres/edit'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end

  devise_for :customers, controller: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations',
  }

  namespace :customer do
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
