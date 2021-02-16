Rails.application.routes.draw do
  # Get all
  get '/tasks', to: 'tasks#index', as: :tasks

  # Create new task
  # form
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # creation
  post '/tasks', to: 'tasks#create'

  #Get one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  #delete/destory
  delete '/tasks/:id', to: 'tasks#destroy'

end
