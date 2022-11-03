# frozen_string_literal: true

class ApplicationController < ActionController::API
  def receive
    puts params

    byebug
  end
end
