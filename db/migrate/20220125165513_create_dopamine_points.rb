class CreateDopaminePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :dopamine_points do |t|
      t.integer :value
      t.integer :activity_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
