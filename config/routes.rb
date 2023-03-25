Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :spices 
  resources :spices, only: [:index, :create, :update, :destroy]

  patch '/spices/:id', to: 'spices#update'
  delete '/spices/:id', to: 'spices#destroy'
end
