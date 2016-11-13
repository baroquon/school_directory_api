Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    jsonapi_resources :people
    jsonapi_resources :courses
    jsonapi_resources :experiences
  end
end
