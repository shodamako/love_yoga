class CreateYogas < ActiveRecord::Migration
  def change
    create_table :yogas do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
