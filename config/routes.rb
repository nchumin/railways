Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'

  resources :tickets
  resource :search, only: [:show, :create]

  namespace :admin do
    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_time, on: :member
    end

    resources :trains do
      resources :carriages
    end

    resources :routes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
