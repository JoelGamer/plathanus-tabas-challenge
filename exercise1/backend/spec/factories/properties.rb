# frozen_string_literal: true

FactoryBot.define do
  factory :property, class: 'Property' do
    street { Faker::Address.street_name }
    number { 50 }
    apartment { 102 }
    description { 'Test property' }
  end
end
