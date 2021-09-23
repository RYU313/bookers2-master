Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :book, only: [:new, :create, :index, :show, :destroy]
  resources :user, only: [:index, :show, :edit]
  root to: 'homes#top'
end
