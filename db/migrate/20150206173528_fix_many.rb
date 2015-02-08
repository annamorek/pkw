class FixMany < ActiveRecord::Migration
  def change
    drop_table :commitees_voivodeships
    create_table :commitees_voivodeships, id: false do |t|
      t.integer :commitee_id, null: false
      t.integer :voivodeship_id, null: false
    end
    add_index :commitees_voivodeships, [:commitee_id, :voivodeship_id]
  end
end
