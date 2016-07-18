Rails.application.routes.draw do
  resources :tests, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  root to: redirect('/tests')
end
