Rails.application.routes.draw do

  constraints(Subdomain) do
    root to: 'companies#index'
    resources :companies
  end
  root to: 'companies#index'

  # root to: 'companies#index'
  # resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
