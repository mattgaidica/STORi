Rails.application.routes.draw do
  resources :source_keywords
  resources :synonyms
  resources :annotations
  resources :keywords
  resources :sources
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
