# frozen_string_literal: true

Rails.application.routes.draw do
  resources :courses
  resources :formations
  get '/coursesby/:id', to: 'courses#show_by_formation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
