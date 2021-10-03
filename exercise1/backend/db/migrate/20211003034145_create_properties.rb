# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :street
      t.integer :number
      t.integer :apartment
      t.string :description

      t.timestamps
    end
  end
end
