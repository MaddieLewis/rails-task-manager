# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available
  # within this file, see
  # http://guides.rubyonrails.org/routing.html
  # ## ## ## ## #
  # router that will piece of code that
  # takes http request and dispatch it to
  # the right controller
  # sits between request and controller

  # VERB PATH, to: 'CONTROLLER#ACTION'

  # PATH must be the path to the wanted page

  ######################################################
  # Create a table to figure out what you need of all
  # of the below

  # HTTP VERB~~~Controller Action~~~ActiveRecord Method#

  ######################################################
  ### Read all tasks
  get 'tasks', to: 'tasks#index'

  ### read all details of one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  ### create a task - 2 REQUESTS
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  ### update a task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  ### destroy a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
