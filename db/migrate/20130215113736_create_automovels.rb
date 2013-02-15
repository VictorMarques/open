class CreateAutomovels < ActiveRecord::Migration
  def change
    create_table :automovels do |t|
      t.string :nome
      t.boolean :tipo
      t.date :born_on

      t.timestamps
    end
  end
end
