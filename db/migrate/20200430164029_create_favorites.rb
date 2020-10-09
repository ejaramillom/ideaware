# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :description

      t.timestamps
    end
  end
end
