Rails.application.routes.draw do
  root to: 'home#index'
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  get 'users' => 'users#show'
  get 'login'  => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'edit'  => 'users#edit'
end
