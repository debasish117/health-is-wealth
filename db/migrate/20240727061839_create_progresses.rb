class CreateProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :weight
      t.integer :steps
      t.integer :calories_burned
      t.datetime :logged_at

      t.timestamps
    end
  end
end
