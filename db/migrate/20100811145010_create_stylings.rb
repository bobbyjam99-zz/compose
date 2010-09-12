class CreateStylings < ActiveRecord::Migration
  def self.up
    create_table :stylings do |t|
      t.integer :layout_id
      t.integer :style_id
      t.integer :sort

      t.timestamps
    end
  end

  def self.down
    drop_table :stylings
  end
end
