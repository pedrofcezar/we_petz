Rails.application.routes.draw do
  resources :articles do
    resources :reviews, except: [:show]
  end
end
