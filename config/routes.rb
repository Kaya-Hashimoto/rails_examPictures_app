Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions, only:[:new, :create, :destroy]
  resources :favorites 
  resources :users
  resources :pictures do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
