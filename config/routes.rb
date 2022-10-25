# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#splash'

  devise_for :users

  resources :groups do
  resources :entities
 
end
resources :users
end
