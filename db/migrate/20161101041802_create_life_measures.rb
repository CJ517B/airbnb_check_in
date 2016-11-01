class CreateLifeMeasures < ActiveRecord::Migration
  def change
    create_table :life_measures do |t|
      t.string :goal_name
      t.integer :target_frequency
      t.string :time_span
      t.string :start_date
      t.integer :user_id
      t.string :times_completed
      t.integer :category_id

      t.timestamps

    end
  end
end
