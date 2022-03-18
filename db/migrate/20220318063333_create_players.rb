class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :wins
      t.integer :losses
      t.boolean :alive

      t.timestamps
    end
  end
end
