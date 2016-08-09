Rails.application.routes.draw do

  get 'intake/case_analysis'

  use_doorkeeper

resources :users
  namespace :admin do
    get 'case/new'
    get 'case/create'
    get 'case/update'
    get 'case/show'
  end


  get 'sessions/current_matter' => 'sessions#new_current_matter', as: :select_current_matter
  post 'sessions/current_matter' => 'sessions#create_current_matter'
  delete 'current_matter' => 'current_matter#delete', as: :end_matter_session
  get 'leave_matter' => 'sessions#delete_current_matter', as: :leave_matter



resources :user_matters
resources :documents
resources :events
resources :photos
resources :people


  get 'dashboard' => 'dashboard#show', as: :dashboard
  get 'roles/all' => 'roles#all', as: :all_users_by_role

  #matters
  get 'matters' => 'matters#index', as: :all_matters
  post 'matters' => 'matters#create'
  get 'matters/new' => 'matters#new', as: :new_matter
  get 'matters/:id' => 'matters#show', as: :matter
  get 'matters/:id/edit' => 'matters#edit', as: :edit_matter
  delete 'matters/:id' => 'matters#delete'
  patch 'matters/:id' => 'matters#update'





  #api_events
    get 'api/events/new' => 'api/events#new'
    post 'api/events' => 'api/events#create'
    get 'api/events' => 'api/events#index'
    get 'api/events/:id' => 'api/events#show'
    patch 'api/events/:id' => 'api/events#update'
    put 'api/events/:id' => 'api/events#update'
    delete 'api/events/:id' => 'api/events#delete'

  #users

    #api users
    post 'api/registrations' => 'api/registrations#create'

  #people
    get 'people/new'

  #Sessions
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'dashboard#show'
end
