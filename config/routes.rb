Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/devenir-un-poney', to: 'user#new', as: :new_poney
  post '/devenir-un-poney/youpi', to: 'user#create'
  get '/poney/error', to: 'user#error', as: :error
  get '/poney/:username', to: 'user#show', as: :poney_page
end
