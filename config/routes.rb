Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'cards/new'
  get 'cards/edit'
  get 'cards/create'
  get 'cards/update'
  get 'cards/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end