Rails.application.routes.draw do
  root "homepage#index"
  get '/voter', to: 'homepage#voter'
  get '/admin', to: 'homepage#admin'
  get '/admin/results', to: 'homepage#results'
  get '/admin/candidates', to: 'candidates#index'

  resources :candidates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
