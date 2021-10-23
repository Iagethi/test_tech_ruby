# frozen_string_literal: true

class ChangeCoursTableName < ActiveRecord::Migration[6.1]
  def change
    rename_column :cours, :cours_name, :course_name
    rename_table :cours, :courses
  end
end
