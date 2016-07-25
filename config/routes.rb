Rails.application.routes.draw do




  get 'profiles/edit'

  get 'profiles/new' => "profiles#new", as: :new_profile
  post 'profiles' => 'profiles#create'

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users

  #people
    get 'people/new'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'welcome#hello'
end
