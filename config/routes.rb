Rails.application.routes.draw do
  devise_for :users
  root 'top#index' 
  resources :users, only: :show
  resources :task, only: [:new, :create, :edit, :update, :destroy] do
    resources :card, except: :index
  end
end
