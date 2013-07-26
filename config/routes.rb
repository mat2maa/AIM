Aim::Application.routes.draw do

  resources :scenes


  resources :scripts


  resources :life_jacket_ages


  resources :orders do
    resources :comments, :only => [:create, :destroy]
    resources :order_steps, controller: 'order_steps'
  end


  resources :life_jackets


  resources :seat_classes


  resources :seat_manufacturers


  resources :seat_layouts


  resources :seats


  resources :safety_cards


  resources :aeroplanes


  resources :airlines


  resources :user_profiles


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end