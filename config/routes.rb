Rails.application.routes.draw do
  get 'railsapp/index'
  get 'railsapp/details'
  root 'railsapp#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
