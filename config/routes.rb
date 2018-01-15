Rails.application.routes.draw do
  devise_for :users
  	
  get 'welcome/index'

  root 'welcome#index'

  resources :users, only: [:show, :edit, :update]

  resources :articles do
  	resources :comments
  end
end
