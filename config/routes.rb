Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'redirections#redirect'
  get '/:website_token', to: 'redirections#redirect', as: :redirection

end
