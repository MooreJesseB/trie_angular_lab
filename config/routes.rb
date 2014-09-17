Rails.application.routes.draw do
  root "words#index"

  resources :words, except: [:edit, :new]
  resources :word_templates
end
