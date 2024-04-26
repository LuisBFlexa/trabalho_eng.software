Rails.application.routes.draw do
  resources :movies do
    resources :reviews, only: [:create, :destroy]
  end
end
