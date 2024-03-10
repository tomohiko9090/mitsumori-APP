Rails.application.routes.draw do
  root to: "tops#index"

  get "signup", to: "users#new"
  post "signup", to: "users#create"
  get :ranking, to: "users#index"
  get :edit, to: "users#edit"
  patch "update/:id", to: "users#update"

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  post :change_status, to: "tasks#change_status"
  get :change_status, to: "tasks#change_status"

  delete :done_destroy, to: "tasks#done_destroy"

  get :measure, to: "timers#measure"
  post :stop, to: "timers#stop"
  get :timer, to: "timers#timer"

  post :today_task_changed, to: "tasks#today_task_changed"

  get :mypage, to: "tasks#mypage"

  resources :tasks
end
