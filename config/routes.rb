Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'boards#index'

  resources :boards do 
    resources :lists
  end

  resources :lists do 
    resources :tasks 
  end
end
