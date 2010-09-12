class CreateStyles < ActiveRecord::Migration
  def self.up
    create_table :styles do |t|
      t.integer :name
      t.string :subject
      t.text :content
      t.integer :content_type_id
      t.integer :user_id
      t.integer :layout_id

      t.timestamps
    end
  end

  def self.down
    drop_table :styles
  end
end
