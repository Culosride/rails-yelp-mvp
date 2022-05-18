Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: %i[new create show] do
    resources :reviews, only: %i[new create]
  end
end

# get 'restaurants/new', to: 'restaurants#new'
# post 'restaurants', to: 'restaurants#create'
# get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
# get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
# get 'restaurants', to: 'restaurants#index'
