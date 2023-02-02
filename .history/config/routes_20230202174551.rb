Rails.application.routes.draw do
  resources :instructors, only: [:index, :show, :update, :destroy, :create ] do
    resources :students, only: [ :index, :show, :destroy, :create ]
  end

  resources :students, only: [ :index, :show, :update, :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end