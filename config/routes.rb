Rails.application.routes.draw do

  resources :star_systems

  get 'home/index'

  resources :planets do
  	post 'copy', on: :member
  end

  root 'home#index'

end
