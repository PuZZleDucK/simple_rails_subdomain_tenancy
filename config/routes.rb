Rails.application.routes.draw do

  constraints(Subdomain) do
    root to: 'companies#index'
    get 'users/index'
  end
  constraints(NoSubdomain) do
    root to: 'companies#index'
    resources :companies
    devise_for :users
    get 'users/index'
    resources :users, only: [:index]
  end

  # root to: 'companies#index'
  # resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
