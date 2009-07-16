class RemoveTimestampsFromCanzone < ActiveRecord::Migration
  def self.up
    change_table :canzoni do |t|
      t.remove_timestamps
      t.remove(:anno)
    end

  end

  def self.down
    change_table :canzoni do |t|
      t.timestamps
      t.date :anno
    end
  end
end
