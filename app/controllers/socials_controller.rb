# frozen_string_literal: true

# Adding Module
require_relative('concerns/data_generator')

# ControllerClass
class SocialsController < ApplicationController
  include DataGen

  # GET localhost:3000/
  def index
    render json: data_generate, status: 200
  end
end
