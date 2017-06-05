Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get '/.well-known/acme-challenge/:id' => 'welcome#letsencrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
