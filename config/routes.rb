Rails.application.routes.draw do
  resources :contacts
  resources :sessions, only: [:new,:create,:destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :favorites, only: [:index,:create,:destroy]

  root :to => "pictures#top"

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
