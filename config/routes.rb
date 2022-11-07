Rails.application.routes.draw do
  resources :clients
  root to:'dashboard#index'
  resources :products do
    member do
      get :new_movement
      post :creat_movement
    end
  end
end
