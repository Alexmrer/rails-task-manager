Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # Update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Show all
  get 'tasks', to: 'tasks#index', as: :all_tasks
  # Display one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Delete
  delete 'tasks/id', to: 'tasks#destroy'
end
