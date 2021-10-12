Rails.application.routes.draw do
  # get 'saloonspas/index'
  resources :appointments
  get '/saloonspas', to: 'saloonspas#index'
  get 'saloonspas/show'
 devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
end
