# frozen_string_literal: true

Rails.application.routes.draw do
  post 'receive', to: 'application#receive', as: :receive
end
