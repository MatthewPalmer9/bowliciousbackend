Rails.application.routes.draw do
  resources :sessons, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :products, only: [:index, :create, :delete]
  resources :comments, only: [:index, :create]

  get '/products' => "products#index"
  get '/comments' => "comments#index"
  get '/users' => "users#home"
  post '/comments' => "comments#create"
end
