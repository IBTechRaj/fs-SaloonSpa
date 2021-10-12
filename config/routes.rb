Rails.application.routes.draw do
  # get 'saloonspas/index'
  resources :appointments
  # resources :saloonspas
  get '/saloonspas', to: 'saloonspas#index'
  get '/saloonspas/:id', to: 'saloonspas#show'

 devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
end
