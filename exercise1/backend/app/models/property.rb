# frozen_string_literal: true

class Property < ApplicationRecord
  validates :street, presence: true
  validates :number, presence: true
  validates :apartment, presence: true

  has_many_attached :images
end
