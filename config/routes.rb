Rails.application.routes.draw do

  resources :projects
  devise_for :admins
  resources :posts
  get 'welcome/index'
  root 'welcome#index'

  get 'tags/:tag', to: 'posts#index', as: :tag
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
