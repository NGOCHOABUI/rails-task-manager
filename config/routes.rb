Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # to get all tasks
  get 'tasks', to: 'tasks#index'

  # to ask user for tasks new in form
  get 'tasks/new', to: 'tasks#new'

  # to create new task
  post 'tasks', to: 'tasks#create'

    # to get view specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # to ask user for tasks edit in form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # to update task
  patch 'tasks/:id', to: 'tasks#update'

  # to delet a specific task
  delete 'tasks/:id', to: 'tasks#destroy'
end
