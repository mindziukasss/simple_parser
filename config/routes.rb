Rails.application.routes.draw do
  root 'welcome#home'
  post 'parse_emails', to: 'welcome#parse', as: :parse_emails
  get 'email_list', to: 'email#email_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
