Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get '/.well-known/acme-challenge/NXRbxitL5I9Rq9o5g8eSUcle17J8t8-sad7cbCTOCw4 ' => 'welcome#letsencrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
