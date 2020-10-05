Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :items, except: [:destroy]
    get 'orders/index'
    get 'orders/show'
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :customers, only: [:index, :show, :edit]
  end

  devise_for :customer, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations',
  }

  scope module: :customer do
    root 'homes#top'
    get 'homes/about'
    resources :deliveries, only: [:index, :create, :edit, :update, :destory]
    get 'orders/index'
    get 'orders/new'
    get 'orders/show'
    get 'cart_items/index'
    resources :items, only: [:index, :show]
    resources :customers, only: [:show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
