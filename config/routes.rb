Rails.application.routes.draw do
  devise_for :users
  resources :subscriptions do
    resources :subscription_line_items, only: [:create, :destroy]
  end
  resources :medications

  root to: "subscriptions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
