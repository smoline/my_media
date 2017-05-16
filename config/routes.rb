Rails.application.routes.draw do
  devise_for :users
  get 'pages/landing'
  root 'pages#landing'

  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
