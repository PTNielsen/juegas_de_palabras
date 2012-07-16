class CreateMadLibs < ActiveRecord::Migration
  def self.up
    create_table :mad_libs do |t|
      t.string :name
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :mad_libs
  end
end
