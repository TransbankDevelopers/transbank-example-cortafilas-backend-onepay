Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'setup/register', to: "setup#register"
  post 'transaction/:deviceid/create', to: "transaction#create"
  get 'transaction/endTransaction', to: "transaction#endTransaction"
end
