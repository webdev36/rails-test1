Rails.application.routes.draw do
  get 'users/filter'
  root 'users#index'
end
