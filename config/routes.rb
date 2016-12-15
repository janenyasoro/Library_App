Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  get 'users' => 'users#show'
  get 'login'  => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'users/:id/edit'  => 'users#edit'
  put 'update' => 'users#update'
  get 'edit' => 'users#edit'
  resources :books
end
