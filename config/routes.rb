Rails.application.routes.draw do
  devise_for :users

  constraints(Subdomain) do
    root to: 'companies#index'
    get 'users/index'
    resources :users, only: [:index]
  end
  constraints(NoSubdomain) do
    root to: 'companies#index'
    resources :companies
    get 'users/index'
    resources :users, only: [:index]
  end

  # root to: 'companies#index'
  # resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
