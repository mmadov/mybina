Rails.application.routes.draw do
  resources :companies
  mount RailsAdmin::Engine => '/admpanel', as: 'rails_admin'
  resources :company_attachments
  resources :rooms
  resources :post_attachments
  resources :posts
resources 'product', :only => [:new, :create]
post 'uploadfiles'=>'product#upload'
  resources :uploads
  get 'images/index'

  get 'images/create'
  resources :images, only: [:index, :create]
  root to: "site#index"
  resources :uploads
  resources :homes do
    end
  resources :regions
  post 'companies/new'
  resources :media_contents, only: [:create]
  devise_for :users
  get 'persons/profile'
get 'search', to: 'search#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :site
  get 'persons/profile', as: 'user_root'
end
