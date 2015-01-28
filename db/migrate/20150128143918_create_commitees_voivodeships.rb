class CreateCommiteesVoivodeships < ActiveRecord::Migration
  def change
    create_table :commitees_voivodeships do |t|
      t.integer :commitee_id
      t.integer :voivodeship_id

      t.timestamps null: false
    end
  end
end
