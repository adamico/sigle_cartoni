class CreateAutori < ActiveRecord::Migration
  def self.up
    create_table :autori do |t|
      t.string :nome
      t.string :cognome

      t.timestamps
    end
  end

  def self.down
    drop_table :autori
  end
end
