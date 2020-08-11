Rails.application.routes.draw do
  resources :products, only: [:index, :create, :delete]
  resources :comments, only: [:index, :create]

  get '/products' => "products#index"
  get '/comments' => "comments#index"
  post '/comments' => "comments#create"
end
