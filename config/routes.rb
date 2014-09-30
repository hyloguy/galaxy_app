Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :star_systems

  resources :planets do
  	post 'copy', on: :member
  end

  resources :users do
  	post 'login', on: :member
  end

	resources :posts

	post 'logins' => 'logins#create'
  get 'logins' => 'logins#destroy'
	# get 'login/create'
	# get 'login/destroy'

end
