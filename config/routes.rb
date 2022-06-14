Rails.application.routes.draw do
  devise_for :users

  resources :tages do
    resources :add_tages
  end

  root to: "home#index"
end
