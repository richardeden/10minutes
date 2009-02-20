class CreateDevotions < ActiveRecord::Migration
  def self.up
    create_table :devotions do |t|
      t.date :date
      t.string :title
      t.string :verse
      t.text :thought
      t.text :prayer

      t.timestamps
    end
  end

  def self.down
    drop_table :devotions
  end
end
