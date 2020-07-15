Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount API::App::Base, at: '/api/app/'
  mount GrapeSwaggerRails::Engine, at: '/swagger'

  root to: 'main#index'
end
