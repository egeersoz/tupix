Tupix::Application.routes.draw do

  root 'submissions#index'

  get '/privacy', to: 'pages#privacy', as: 'privacy'
  get '/terms', to: 'pages#terms', as: 'terms'

  get '/v/:slug', to: 'submissions#show', as: 'show_submission'
  get '/c/:slug', to: 'submissions#comp', as: 'show_composite'
  get '/new', to: 'submissions#new', as: 'new_submission'
  post '/submissions', to: 'submissions#create', as: 'submissions'
  delete '/:slug', to: 'submissions#destroy', as: 'destroy_submission'
  devise_for :users

end
