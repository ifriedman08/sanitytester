Rails.application.routes.draw do
  root to: 'tests#index'
  resources :tests, only: [:new, :create, :edit, :update, :destroy, :index, :show]
end
