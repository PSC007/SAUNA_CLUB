Rails.application.routes.draw do
 resources :saunas do
   resources :bookings, only: [:create]
   resources :reviews, only: [ :new, :create ]
 end

  resources :bookings, only: [ :index, :show, :destroy ]
  resources :reviews, only: [ :destroy ]
  resources :comments, only: [ :show, :edit, :update, :destroy ]

  devise_for :users
  root to: "pages#home"
end
