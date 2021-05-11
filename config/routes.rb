Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # READ ALL
  get 'tasks', to: 'tasks#index'
  # READ ONE
  get 'tasks/:id', to: 'tasks#show', as: :task
  # For the CREATE route, we need to do a NEW route, which needs to come before SHOW
  get 'tasks/new', to: 'tasks#new'
  # POST the form
  post 'tasks', to: 'tasks#create'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
