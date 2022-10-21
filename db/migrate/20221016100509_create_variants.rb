class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :car, null: false, foreign_key: true
      t.integer :model
      t.string :color

      t.timestamps
    end
  end
end
