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



  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'home#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
    root :to => 'devise/sessions#new'
  end

  resources :users

end