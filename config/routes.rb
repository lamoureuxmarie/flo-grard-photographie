Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :albums do
    resources :photos
  end
end
