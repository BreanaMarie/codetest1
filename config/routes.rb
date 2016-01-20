Rails.application.routes.draw do

  root to: "talks#index"

  resources :talks
  resources :attendees
  resources :attendances

end
