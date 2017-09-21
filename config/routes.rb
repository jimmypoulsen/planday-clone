Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :employees
  resources :shifts
  resources :organizations, only: [:new, :create, :show] do
    resources :employee_groups
  end
end
