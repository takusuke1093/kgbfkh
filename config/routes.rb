Rails.application.routes.draw do
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'statics#top'
  get 'statics/top' => 'statics#top'
  get 'statics/result/:country_id' => 'statics#result'

  # get 'statics/result/:id' => 'statics#result'
  get 'statics/result' => 'statics#result'

  get 'school/show' => 'school#show'

  get 'comment/show/:id' => 'comment#show'
  get 'comment/show' => 'comment#show'
  get 'comment/new' => 'comment#new'
  get 'comment/index' => 'comment#index'
  post 'comment/index' => 'comment#create'
  get 'replies/new/:id' => 'replies#new'

  get 'replies/new' => 'replies#new'


end
