Rails.application.routes.draw do
  resources :sauna, only: [ :show ]

  devise_for :users
  root to: "pages#home"
end
