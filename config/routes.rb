Tupix::Application.routes.draw do

  root 'submissions#index'

  resources :submissions
  devise_for :users

end
