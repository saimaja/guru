class DropFollowsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :follows
  end
end
