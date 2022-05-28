Rails.application.routes.draw do
  devise_for :users,
  path: 'auth',
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  namespace :orders do
    post 'invitation'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
