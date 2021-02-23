Rails.application.routes.draw do
 resources :saunas, only: [ :show, :new, :create ]

  devise_for :users
  root to: "pages#home"
end
