Rails.application.routes.draw do
  get 'tasks_imports/new'
  get 'tasks_imports/create'
  get 'tasks_import/new'
  get 'tasks_import/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # PAGES GETS
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :tasks_imports, only: [:new, :create]


  # READ ALL
  get 'tasks', to: 'tasks#index'
  # POST the form
  post 'tasks', to: 'tasks#create'

  # For the CREATE route, we need to do a NEW route, which needs to come before SHOW
  get 'tasks/new', to: 'tasks#new'
  # GET with pre-filled attributes for editing
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # READ ONE
  get 'tasks/:id', to: 'tasks#show', as: :task

  # PATCH the form
  patch 'tasks/:id', to: 'tasks#update'
  
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
