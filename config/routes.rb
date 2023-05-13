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
    get :pricing
  end

  namespace :client do
    get 'overview', to: 'client#overview'
    get 'help', to: 'client#help'
  end
  namespace :professional do
    get 'overview', to: 'professional#overview'
    get 'help', to: 'professional#help'
  end
end
