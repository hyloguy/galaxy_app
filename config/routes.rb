Rails.application.routes.draw do

  get 'home/index'

  resources :planets do
  	post 'copy', on: :member
  end

  root 'planets#index'

end
