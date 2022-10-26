# frozen_string_literal: true

Rails.application.routes.draw do
  resources :group_entities
  root 'home#index'

  devise_for :users

  resources :groups do
  resources :entities
 
end
resources :users
end
