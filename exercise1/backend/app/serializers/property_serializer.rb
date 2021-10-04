# frozen_string_literal: true

class PropertySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :street, :number, :apartment, :description, :name, :images, :created_at, :updated_at

  def name
    "R. #{object.street}, #{object.number} AP #{object.apartment}"
  end

  def images
    object.images.all.map { |image| rails_blob_url(image, host: 'localhost', port: 3000, protocol: 'http') }
  end
end
