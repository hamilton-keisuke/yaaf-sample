Rails.application.routes.draw do
  root "parents#index"
  resources :children
  resources :parents
end
