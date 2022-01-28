class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :commentable, polymorphic: true, index: true 

      t.timestamps null: false
    end
  end
end
