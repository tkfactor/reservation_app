Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/index'

  root 'tops#index'

  get 'users/profile'
  get 'users/account'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
  }

  resources :users

  resources :rooms do
    collection do
      get 'search'
    end
  end

  resources :reservations
  post 'reservations/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
