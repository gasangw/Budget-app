# frozen_string_literal: true

Rails.application.routes.draw do
  root 'groups#index'

  devise_for :users

  resources :entities
  resources :groups
 
end
