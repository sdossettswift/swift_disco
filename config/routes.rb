Rails.application.routes.draw do
  get 'welcome/hello'

  get 'people/new'

  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
