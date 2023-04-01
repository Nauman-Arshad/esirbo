Rails.application.routes.draw do
  root 'website#home'
  scope controller: :website do
    get :home
    get :service
    get :portfolio
    get :contact
    get :about
    get :blog
  end
end
