Rails.application.routes.draw do
  root to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/show', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'
end
