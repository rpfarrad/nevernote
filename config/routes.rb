Rails.application.routes.draw do
  root 'welcome#index'
  get 'sign_up' => 'users#new'
  resources :users, only: :create

  resources :sessions, only: :create
  delete 'logout' => 'sessions#destroy'
  get    'login'  => 'sessions#new'

  resources :notes, except: :edit
end
