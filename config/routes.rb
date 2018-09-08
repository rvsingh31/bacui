Rails.application.routes.draw do
  get 'questions/edit_questionnaire'
  get 'instructor_tasks/list'
  get 'student_tasks/list'
  get 'courses/list_users'
  post 'courses/add_user'
  get 'student_tasks/list'
  get 'about', to: 'pages#about'
  get 'contact_admin', to: 'pages#contact'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :tasks
  resources :courses
  resources :artifacts
  resources :actors

  root to: 'pages#home'
end
