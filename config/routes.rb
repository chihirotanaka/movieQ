Rails.application.routes.draw do
  get 'quizzes/new'
  get 'quizzes/edit'
  get 'users/edit'
  devise_for :users

  root 'quizes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
