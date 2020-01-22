Rails.application.routes.draw do
  devise_for :user
  root 'statics#top'
  get 'statics/top' => 'statics#top'

  #school  #comment  #replies
  # resources :schools, only: [:index] do
  #   resources :comment, only: [:index, :create, :new, :show, :destroy] do
  #     resources :replies, only: [:index, :create, :new, :show, :destroy]
  #   end
  #   resources :class, only: [:index, :create, :new, :show, :destroy]
  #   resources :evaluation, only: [:index, :create, :new, :show, :destroy]
  # end

  resources :schools, only: [:index] do
    resources :toppages, only: [:index, :show]
  end


  resources :profile, only: [:index, :create, :new, :show] do
    resources :users, only: [:show]
  end
end

