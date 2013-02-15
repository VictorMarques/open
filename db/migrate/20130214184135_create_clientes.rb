class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :endereco
      t.date :born_on
      t.boolean :female

      t.timestamps
    end
  end
end
