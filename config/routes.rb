Rails.application.routes.draw do
  devise_for :users
  
  get 'welcome/index'
  root 'welcome#index'

  resources :trains do
    resources :carriages
  end

  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_time, on: :member
  end
  resources :routes
  resources :carriages
  resources :tickets

  resource :search, only: [:show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
