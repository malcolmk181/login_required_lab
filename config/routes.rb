Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#index'
  get '/new', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/destroy', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'
end
