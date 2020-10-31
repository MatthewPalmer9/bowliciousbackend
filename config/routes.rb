Rails.application.routes.draw do
  resources :products, only: [:index, :create, :delete]
  resources :comments, only: [:index, :create]

  get '/products' => "products#index"
  get '/comments' => "comments#index"
  get '/users' => "users#home"
  post '/comments' => "comments#create"
end
