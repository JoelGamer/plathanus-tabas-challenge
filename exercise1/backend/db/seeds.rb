# frozen_string_literal: true
require 'faker'

random = Random.new

images = ['image1.jpeg', 'image2.jpeg', 'image3.jpeg', 'image4.jpeg', 'image5.jpeg']
custom_images = ['image6.jpeg', 'image7.jpeg', 'image8.jpeg']

root = Rails.root.to_s

property = Property.new(street: 'Sergipe (My House)', number: 51, apartment: 502)
custom_images.each { |custom| property.images.attach(io: File.open("#{root}/app/assets/images/#{custom}"), filename: custom) }
property.save!

for i in 1..49 do
  image_quantity = random.rand(3) + 3
  images_name = []

  for i in 1..image_quantity do
    images_name << images.sample
  end

  image_io = images_name.map do |name|
    {
      path: "#{root}/app/assets/images/#{name}",
      filename: name
    }
  end

  property = Property.new(street: Faker::Address.street_name, number: random.rand(100) + 1, apartment: random.rand(1000) + 1)
  image_io.each {|image| property.images.attach(io: File.open(image[:path]), filename: image[:filename]) }
  property.save!
end