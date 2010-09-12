class CreateStyleTypes < ActiveRecord::Migration
  class StyleType < ActiveRecord::Base; end

  def self.up
    create_table :style_types do |t|
      t.string :name

      t.timestamps
    end

  StyleType.create :name => 'CSS'
  StyleType.create :name => 'XSLT'

  end

  def self.down
    drop_table :style_types
  end
end
