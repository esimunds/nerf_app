class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :alive
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
