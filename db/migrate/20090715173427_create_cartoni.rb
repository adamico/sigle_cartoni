class CreateCartoni < ActiveRecord::Migration
  def self.up
    create_table :cartoni do |t|
      t.string :nome_it
      t.string :nome_ori
      t.string :produzione
      t.string :distribuito_in
      t.string :tipo
      t.string :formato
      t.date :anno
      t.integer :episodi
      t.timestamps
    end
  end
  
  def self.down
    drop_table :cartoni
  end
end
