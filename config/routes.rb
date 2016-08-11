Rails.application.routes.draw do
    use_doorkeeper

    get 'documents/:id/upload' => 'documents#upload', as: :upload
    

    resources :documents
    resources :events
    resources :photos
    resources :people
    resources :matters
    resources :users

    namespace :admin do
        resources :user_matters
        resources :matters
        resources :users
    end

    namespace :api do
        resources :matters
        resources :events
        post 'api/registrations' => 'api/registrations#create'
    end

    get 'intake/case_analysis'
    get 'dashboard' => 'dashboard#show', as: :dashboard
    get 'admin/dashboard' => 'admin/dashboard#show', as: :admin_dashboard
    get 'matters/:id/timeline' => 'matters#timeline', as: :timeline
    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out
    root 'welcome#hello'
end
