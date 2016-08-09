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


  #events
    post 'events' => 'events#create'
    get 'events/new' => 'events#new', as: :new_event
    get 'events/:id' => 'events#show', as: :event
    get 'events/:id/edit' => 'events#edit', as: :edit_event
    delete 'events/:id' => 'events#delete'
    patch 'events/:id' => 'events#update'

    #photos
      post 'photos' => 'photos#create'
      get 'photos/new' => 'photos#new', as: :new_photo
      get 'photos/:id' => 'photos#show', as: :photo
      get 'photos/:id/edit' => 'photos#edit', as: :edit_photo
      delete 'photos/:id' => 'photos#delete'
      patch 'photos/:id' => 'photos#update'

      #documents
        post 'documents' => 'documents#create'
        get 'documents/new' => 'documents#new', as: :new_document
        get 'documents/:id' => 'documents#show', as: :document
        get 'documents/:id/edit' => 'documents#edit', as: :edit_document
        delete 'documents/:id' => 'documents#delete'
        patch 'documents/:id' => 'documents#update'
        get 'documents' => 'documents#index', as: :document_index


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
