Rails.application.routes.draw do
  devise_for :users
  resource :home, only: [:index]
  resource :images, except: [:new]
  root to: "home#index"
end
