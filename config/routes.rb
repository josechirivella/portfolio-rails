Rails.application.routes.draw do
  resources :sitemap, :only => [:index]

  resources :home, :only => [:index]

  resources :projects, :only => [:show]

  devise_for :admins

  namespace :api do
    namespace :v1 do
      resources :projects
      resources :educations
      resources :experiences
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'
end
