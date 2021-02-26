Rails.application.routes.draw do
 resources :saunas do
   resources :bookings, only: [:create]
   resources :reviews, only: [ :create ]
 end

  resources :bookings, only: [ :index, :destroy ] do
    member do
      patch :accept
      patch :reject
    end
  end

  resources :reviews, only: [ :destroy ]
  resources :comments, only: [ :show, :edit, :update, :destroy ]

  devise_for :users
  root to: "pages#home"
end
