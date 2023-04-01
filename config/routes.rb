Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'website#home'
  resource :user do
    resource :role, only: [:new, :create]
  end
  scope controller: :website do
    get :home
    get :service
    get :portfolio
    get :contact
    get :about
    get :blog
  end
  get 'client_dashboard', to: 'client#dashboard'
  get 'professional_dashboard', to: 'professional#dashboard'
end
