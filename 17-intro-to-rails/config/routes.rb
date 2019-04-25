Rails.application.routes.draw do
  resources :meals
  get "meals/about"
  get "/", to: redirect("meals/about")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
