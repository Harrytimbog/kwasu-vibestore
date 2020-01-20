Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  post 'products/create'
  get 'products/edit'
  patch 'products/update'
  delete 'products/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :products do
    resources :reviews, only: [:create]
  end
end
