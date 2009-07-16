class CreateProduzioni < ActiveRecord::Migration
  def self.up
    create_table :produzioni do |t|
      t.string :nome
      t.string :paese

      t.timestamps
    end
  end

  def self.down
    drop_table :produzioni
  end
end
