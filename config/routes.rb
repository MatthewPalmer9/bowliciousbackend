Rails.application.routes.draw do
  resources :products, only: [:index, :create, :delete]

  get '/products' => "products#index"
end
