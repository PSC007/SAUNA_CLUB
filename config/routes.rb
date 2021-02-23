Rails.application.routes.draw do
 resources :saunas do
   resources :bookings, only: [:create]
 end

  resources :bookings, only: [ :index, :show ]

  devise_for :users
  root to: "pages#home"
end
