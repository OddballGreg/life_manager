Rails.application.routes.draw do
  root 'dashboard#index'

  # get 'dashboard/index'
  # get 'dashboard', to: "manager#dashboard"
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
