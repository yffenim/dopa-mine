class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
