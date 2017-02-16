Rails.application.routes.draw do
  devise_for :users  
  root 'welcome#home'
  post 'parse_emails', to: 'welcome#parse', as: :parse_emails
  get 'email_list', to: 'email#email_list'

  get 'about', to: 'welcome#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
