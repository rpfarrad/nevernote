Rails.application.routes.draw do
  root 'welcome#index'
  get 'sign_up' => 'users#new'
  resources :users, only: :create
end
