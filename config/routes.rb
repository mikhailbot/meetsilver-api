Rails.application.routes.draw do
  resources :votes, only: [:show, :create]
  resources :events, only: [:index, :show, :create], param: :slug
end
