Rails.application.routes.draw do

  get 'home/index'
  resources :planets
  root 'planets#index'

end
