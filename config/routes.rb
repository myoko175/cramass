Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  resources :machines
  resources :users, only: :show
end
