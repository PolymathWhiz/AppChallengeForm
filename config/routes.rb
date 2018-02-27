Rails.application.routes.draw do
  root 'forms#new'
  devise_for :users
  resources :forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
