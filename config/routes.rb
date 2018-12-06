Rails.application.routes.draw do
  root to: 'pages#home'

  resources :workshops do
    post :favourited
    resources :bookings, only: [:index, :show, :new, :create, :destroy, :edit]
    resources :notes, only: [:new, :index, :create, :update, :edit, :destroy]
    resources :users, only:[:new, :create, :update]
  end

  devise_for :users

  get :dashboard, to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
