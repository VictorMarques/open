class CreateWashings < ActiveRecord::Migration
  def change
    create_table :washings do |t|
      t.integer :automovel_id
      t.integer :type_id

      t.timestamps
    end
  end
end
