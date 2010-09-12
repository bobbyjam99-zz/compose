class CreatePaths < ActiveRecord::Migration
  def self.up
    create_table :paths do |t|
      t.string :path
      t.integer :layout_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :paths
  end
end
