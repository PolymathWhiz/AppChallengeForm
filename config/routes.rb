Rails.application.routes.draw do
  root 'forms#new'
  devise_for :users
  devise_scope :admin do
    resources :users, only: [:show]
  end
  resources :forms, only: [:new, :create]
end