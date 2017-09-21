Rails.application.routes.draw do
  root to: "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :employees
  resources :shifts
end
