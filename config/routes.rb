Tupix::Application.routes.draw do

  root 'pages#home'

  get '/privacy', to: 'pages#privacy', as: 'privacy'
  get '/terms', to: 'pages#terms', as: 'terms'

  get '/v/:slug', to: 'submissions#show', as: 'show_submission'
  get '/c/:slug', to: 'submissions#comp', as: 'show_composite'
  get '/new', to: 'submissions#new', as: 'new_submission'
  get '/mine', to: 'submissions#index', as: 'submissions'
  post '/mine', to: 'submissions#create', as: 'create_submission'
  delete '/:slug', to: 'submissions#delete', as: 'destroy_submission'
  devise_for :users

end
