Rails.application.routes.draw do
  get 'rooms/index'

  get 'rooms/new'

  get 'rooms/create'

  get 'rooms/listing'

  get 'rooms/pricing'

  get 'rooms/description'

  get 'rooms/photo_upload'

  get 'rooms/amenities'

  get 'rooms/location'

  get 'rooms/update'

  root 'pages#home'

  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               edit: 'profile',
               sign_up: 'registration',
             },
             :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks', 
                                registrations: 'registrations'}
             

  resources :users, only: [:show]
  resources :rooms, except: [:edit] do
    member do
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'location'
    end
  end
end
