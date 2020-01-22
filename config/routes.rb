Rails.application.routes.draw do
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #statics
  # resources :statics, only: [:index, :create, :new, :show, :destroy]
  root 'statics#top'
  get 'statics/top' => 'statics#top'

  #school  #comment  #replies
  resources :school, only: [:index, :show] do
    resources :comment, only: [:index, :create, :new, :show, :destroy] do
      resources :replies, only: [:index, :create, :new, :show, :destroy]
    end
    resources :class, only: [:index, :create, :new, :show, :destroy] 
    resources :evaluation, only: [:index, :create, :new, :show, :destroy] 
  end




  resources :profile, only: [:index, :create, :new, :show] do
    resources :users, only: [:show]
  end



end
