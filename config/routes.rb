Rails.application.routes.draw do
 resources :saunas, only: [ :new, :create ]

  devise_for :users
  root to: "pages#home"
end
