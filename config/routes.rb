Rails.application.routes.draw do
  resources :reminders
	resources :registers
	resources :sessions
	resources :admins
	post '/users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
