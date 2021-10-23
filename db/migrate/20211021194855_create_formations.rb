# frozen_string_literal: true

class CreateFormations < ActiveRecord::Migration[6.1]
  def change
    create_table :formations do |t|
      t.string :formation_name

      t.timestamps
    end
  end
end
