class CreateCanzoni < ActiveRecord::Migration
  def self.up
    create_table :canzoni do |t|
      t.string :titolo
      t.integer :durata
      t.date :anno
      t.timestamps
    end
  end
  
  def self.down
    drop_table :canzoni
  end
end
