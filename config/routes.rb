Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  resources :machines do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end