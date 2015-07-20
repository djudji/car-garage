Rails.application.routes.draw do
  resources :vehicles
  resources :levels, only: [:index, :create, :destroy] do
    member do
      post :create_slot
    end
  end
  resources :slots
  resources :tasks do
    member do
      put :change
    end
  end

  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
end
