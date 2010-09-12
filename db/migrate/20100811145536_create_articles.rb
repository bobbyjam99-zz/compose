class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.integer :path_id
      t.string :subject
      t.text :content
      t.integer :content_type_id
      t.integer :user_id
      t.integer :layout_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
