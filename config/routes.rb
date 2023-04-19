# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'website#home'
  resource :user do
    resource :role, only: %i[new create]
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
