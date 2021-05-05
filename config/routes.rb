Rails.application.routes.draw do
  root to: 'home#index'
  resources :withdraw_mpesas
  resources :fuliza_mpesas
  resources :my_mpesas
  resources :renew_calls
  resources :okoa_calls
  resources :my_calls
  resources :renew_data
  resources :okoa_data
  resources :my_data
  resources :mpesas
  resources :calls
  resources :data
  resources :menus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
