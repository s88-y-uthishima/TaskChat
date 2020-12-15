Rails.application.routes.draw do
  devise_for :users
  root 'top#index' 

  resources :task, only: [:new, :create, :edit, :update, :destroy]
end
