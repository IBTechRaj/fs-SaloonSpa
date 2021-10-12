Rails.application.routes.draw do
  resources :appointments
  get '/saloonspas', to: 'saloonspas#index'
  get '/saloonspas/:id', to: 'saloonspas#show'
  get '/services', to: 'services#index'

 devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
end
