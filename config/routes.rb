Rails.application.routes.draw do

use_doorkeeper


  get 'profiles/edit'
  get 'profiles' => "profiles#new"
  get 'profiles/new' => "profiles#new", as: :new_profile
  post 'profiles' => 'profiles#create'

  get 'profiles/:id' => 'profiles#show', as: :show_profile
  get 'profiles/:id/update' => 'profiles#update', as: :edit_profile
  patch 'profiles/:id' => 'profiles#update'

  #events
    post 'events' => 'events#create'
    get 'events/new' => 'events#new', as: :new_event
    get 'events/:id' => 'events#show', as: :event
    get 'events/:id/edit' => 'events#edit', as: :edit_event
    delete 'events/:id' => 'events#delete'
    patch 'events/:id' => 'events#update'

#api_events

  get 'api/events/new' => 'api/events#new'
  post 'api/events' => 'api/events#create'
  get 'api/events' => 'api/events#index'
  get 'api/events/:id' => 'api/events#show'
  patch 'api/events/:id' => 'api/events#update'
  put 'api/events/:id' => 'api/events#update'
  delete 'api/events/:id' => 'api/events#delete'
  

  #users
    get 'register' => 'users#new', as: :new_user
    post 'users' => 'users#create', as: :create_user
    get 'users' => 'users#index', as: :users
    get 'users/:id' => 'users#show_profile', as: :user
    #api users
    post 'api/registrations' => 'api/registrations#create'

  #people
    get 'people/new'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'welcome#hello'
end
