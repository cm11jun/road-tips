Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  # resources :profiles, only: [:show]
  get 'profile' => 'profile#show'

  resources :bookings, only: [:index]


  resources :trips do
    resources :bookings
    resources :reviews, only: [:create]
    resources :pois, only: [:index, :show] do
  end
end
  # resources :features, only: [:index, :show]
  # resources :trip_features, only: []
  # Defines the root path route ("/")
  # root "articles#index"
end
#   resources :my_trips, only: [:index]
#   resources :trips
#   resources :pois, only: [:index, :show] do
#     resources :reviews, only: [:new, :create]
#     resources :my_trips, only: [:new, :create, :show]
#   end
#   resources :trip_pois, only: []
#   resources :reviews, only: [:destroy]
#   resources :users, only: [] do
#     resources :my_trips, only: [:index]
  # end
