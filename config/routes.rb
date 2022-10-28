# frozen_string_literal: true

Rails.application.routes.draw do
  default_url_options :host => "example.com"
  # resources :group_entities
  root 'pens#index'
  devise_for :users
  resources :groups do
    resources :entities
  end
  resources :users
end
