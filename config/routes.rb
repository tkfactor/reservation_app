Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/index'
  root 'tops#index'

  get 'users/profile'
  get 'users/account'

  get 'rooms/posts'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
  }

  resources :users

  resources :rooms

  resources :reservations
  post 'reservations/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
