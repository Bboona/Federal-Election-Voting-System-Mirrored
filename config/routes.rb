Rails.application.routes.draw do
  resources :votes
  root "homepage#index"
  get '/voter', to: 'votes#voter'
  post '/voter', to: 'votes#submit_votes'
  get '/admin', to: 'homepage#results'
  # get '/admin/results', to: 'homepage#results'
  get '/admin/candidates', to: 'candidates#index'
  get'/admin/ballots', to: 'votes#ballots'

  resources :candidates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
