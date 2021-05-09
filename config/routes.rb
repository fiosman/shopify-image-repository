Rails.application.routes.draw do
  devise_for :users
  resource :home, only: [:index]
  resources :images, except: [:new, :index]
  root to: "home#index"
end
