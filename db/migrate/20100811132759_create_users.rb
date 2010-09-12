class CreateUsers < ActiveRecord::Migration
  class User < ActiveRecord::Base; end

  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end

    User.create :username => 'admin',
      :password => 'admin'
  end

  def self.down
    drop_table :users
  end
end
