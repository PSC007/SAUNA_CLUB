Rails.application.routes.draw do
 resources :saunas, only: [ :show, :index, :new, :create ] do
   resources :bookings, only: [:create]
 end

  resources :bookings, only: [ :index ]

  devise_for :users
  root to: "pages#home"
end
