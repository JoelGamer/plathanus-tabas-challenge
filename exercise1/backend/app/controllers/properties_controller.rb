# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show]

  def index
    render json: Property.all
  end

  def create
    render json: Property.create!(create_property_params)
  rescue ActiveRecord::RecordInvalid => e
    render json: e.message, status: :bad_request  
  end

  def show
    render json: @property
  end

  private

  def create_property_params
    params.require(:property).permit(property_params)
  end

  def property_params
    %i[street number apartment description]
  end

  def set_property
    @property = Property.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: e.message, status: :not_found
  end
end
