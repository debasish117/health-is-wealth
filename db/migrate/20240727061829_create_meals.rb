class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :calories
      t.datetime :eaten_at

      t.timestamps
    end
  end
end
