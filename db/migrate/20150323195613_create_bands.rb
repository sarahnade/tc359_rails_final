class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.text :name
      t.integer :musicians
      t.text :website
      t.boolean :currently_together

      t.timestamps null: false
    end
  end
end
