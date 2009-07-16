class AddCeloToCanzone < ActiveRecord::Migration
  def self.up
    change_table :canzoni do |t|
      t.boolean :celo, :default => 'false'
    end
  end

  def self.down
    change_table :canzoni do |t|
      t.remove(:celo)
    end
  end
end
