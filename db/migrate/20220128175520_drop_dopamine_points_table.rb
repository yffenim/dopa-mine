class DropDopaminePointsTable < ActiveRecord::Migration[7.0]
  # reversible method for dropping Dopamine Points Table
  def change
    drop_table :dopamine_points do |t|
      t.integer :value
      t.integer :activity_id
      t.integer :comment_id
      t.timestamps null: false
    end
  end
end
