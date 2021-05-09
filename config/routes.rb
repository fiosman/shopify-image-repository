Rails.application.routes.draw do
  devise_for :users
  resource :home, only: [:index]
  resources :images, except: [:new, :index, :edit, :update]
  resources :comments, except: [:new, :index, :edit, :update, :destroy]
  root to: "home#index"
end
