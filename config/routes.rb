Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'items#index'
end
