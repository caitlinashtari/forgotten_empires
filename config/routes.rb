Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"
  
  resources :users do
    resources :nations
  end

  resources :nations do
    resources :statistics
  end
end
