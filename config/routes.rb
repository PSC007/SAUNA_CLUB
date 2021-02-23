Rails.application.routes.draw do
 resources :saunas, only: [ :index, :new, :create ] do
   resources :bookings, only: [:create]
 end


  devise_for :users
  root to: "pages#home"
end
