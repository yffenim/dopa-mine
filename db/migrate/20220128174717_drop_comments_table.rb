class DropCommentsTable < ActiveRecord::Migration[7.0]
  # drop comments table entirely
  def up
    drop_table :comments
  end

  # prevent the table drop being reversible
  def down
    raise ActiveRecord::IrrevesibleMigration
  end

end
