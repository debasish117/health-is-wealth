class CreateWorkoutPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :workout_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :duration
      t.datetime :scheduled_time

      t.timestamps
    end
  end
end
