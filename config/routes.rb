Rails.application.routes.draw do

  resources :posts
  get 'welcome/index'
  get 'welcome/articles'
  root 'welcome#index'
  get '/.well-known/acme-challenge/:id' => 'welcome#letsencrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
