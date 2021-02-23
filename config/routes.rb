Rails.application.routes.draw do
  get 'saunas/index'
  get 'saunas/show'
  get 'saunas/new'
  get 'saunas/create'
  get 'saunas/edit'
  get 'saunas/update'
  get 'saunas/destroy'
  devise_for :users
  root to: "pages#home"
end
