Rails.application.routes.draw do
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #statics
  root 'statics#top'
  get 'statics/top' => 'statics#top'
  get 'statics/result/:country_id' => 'statics#result'
  get 'statics/result' => 'statics#result'

  #school
  resources :school, only: [:index, :show]
  # get 'school/show' => 'school#show'

  #comment

  resources :comment, only: [:index, :create, :new, :show, :destroy]

  # get 'comment/show' => 'comment#show'
  # get 'comment/show/:id' => 'comment#show'
  # get 'comment/new' => 'comment#new'
  # get 'comment/index' => 'comment#index'
  # post 'comment/index' => 'comment#create'
  # get 'comment/show/:id' => 'comment#index'
  
  
  #replies
  get 'replies/new/:id' => 'replies#new'
  get 'replies/create/:id' => 'replies#create'
  post 'replies/create/:id' => 'replies#create'


  # resources :tweets, only: [:index, :create, :new, :show, :destroy]

  # get    'tweets/new'      => 'tweets#new'
  # get    'tweets/:id/edit' => 'tweets#edit'
  # get    'tweets/:id'      => 'tweets#show'
  # patch  'tweets/:id'      => 'tweets#update'
  # put    'tweets/:id'      => 'tweets#update'


end
