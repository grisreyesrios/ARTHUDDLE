Rails.application.routes.draw do

  resources :workshops do
    resources :bookings, only: [:index, :show, :new, :create, :destroy, :edit]
    resources :notes, only: [:index, :create, :destroy, :edit, :update]
  end


  devise_for :users
  root to: 'pages#home'

  get :dashboard, to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
