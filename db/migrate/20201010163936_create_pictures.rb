# frozen_string_literal: true

class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.integer :description
      t.string :url
      t.references :favorite, foreign_key: true

      t.timestamps
    end
  end
end
