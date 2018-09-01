Rails.application.routes.draw do
  get 'orders/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope path: '/api', as: :api do
    scope :v1 do
      resources :orders, controller: 'api/v1/orders'
    end
  end
end
