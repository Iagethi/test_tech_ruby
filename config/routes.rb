Rails.application.routes.draw do
  resources :cours
  resources :formations
  get '/coursi/:id', to: 'cours#show_by_formation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
