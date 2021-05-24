Rails.application.routes.draw do
  root "homepage#index"
  get '/voter', to: 'homepage#voter'

  resources :candidates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
