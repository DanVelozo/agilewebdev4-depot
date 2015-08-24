Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  controller :sessions do
    get 'login', as: :new
    post 'login', as: :create
    delete 'logout', as: :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items
  resources :carts

  get 'store/index'
  root 'store#index', as: 'store'
  resources :products do
    get :who_bought, on: :member
  end
end
