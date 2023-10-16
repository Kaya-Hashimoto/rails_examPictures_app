Rails.application.routes.draw do
  #resources :favorites, only[:create, :destroy]
  resources :users, only:[:new, :create]
end
