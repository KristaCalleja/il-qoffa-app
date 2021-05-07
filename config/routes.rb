Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tasks', to: 'tasks#index'
  # For the CREATE route, we need to do a NEW route, which needs to come before SHOW
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # POST the form
  post 'tasks', to: 'tasks#create'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
