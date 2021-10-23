# frozen_string_literal: true

class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_reference :cours, :formation, foreign_key: true
  end
end
