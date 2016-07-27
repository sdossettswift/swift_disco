Rails.application.routes.draw do




  get 'profiles/edit'
  get 'profiles' => "profiles#new"
  get 'profiles/new' => "profiles#new", as: :new_profile
  post 'profiles' => 'profiles#create'

  get 'profiles/:id' => 'profiles#show', as: :show_profile
  get 'profiles/:id/update' => 'profiles#update', as: :edit_profile
  patch 'profiles/:id' => 'profiles#update'

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#show_profile', as: :user

  #people
    get 'people/new'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'welcome#hello'
end
