Rails.application.routes.draw do
  resources :vehicles
  resources :levels, only: [:index, :create, :destroy] do
    member do
      post :create_slot
    end
  end
  resources :slots
  get "unassign_vehicle/:id", to: "slots#unassign_vehicle", as: "unassign_vehicle"
  resources :tasks do
    member do
      put :change
    end
  end

  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
end
