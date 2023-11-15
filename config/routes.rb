Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"

  get "student-dashboard" , to:"student_dashboard#index"

  get "student-courses" , to:"courses#index"
  get "student-assignments" , to:"assignments#index"
  get "student-Enrollments" , to:"enrollments#index"

end
