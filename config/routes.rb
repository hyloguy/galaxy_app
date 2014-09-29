Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :star_systems

  resources :planets do
  	post 'copy', on: :member
  end

  resources :users
	resources :posts

end
