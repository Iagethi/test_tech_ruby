class CreateCours < ActiveRecord::Migration[6.1]
  def change
    create_table :cours do |t|
      t.string :cours_name

      t.timestamps
    end
  end
end
