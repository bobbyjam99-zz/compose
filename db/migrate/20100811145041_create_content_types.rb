class CreateContentTypes < ActiveRecord::Migration
  class ContentType < ActiveRecord::Base; end
  def self.up
    create_table :content_types do |t|
      t.string :name

      t.timestamps
    end

    ContentType.create :name => 'RedCloth'
    ContentType.create :name => 'BlueCloth'
    ContentType.create :name => 'text'

  end

  def self.down
    drop_table :content_types
  end
end
