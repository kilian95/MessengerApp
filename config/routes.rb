Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'	

  devise_for :users 

  resources :user do
  	resources :chats, only: [:index, :show, :create]
  end 

  resources :messages, only:[:create]

  root 'chats#index'



end 
