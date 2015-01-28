class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :electorate
      t.integer :mandate
      t.integer :user_id
      t.integer :voivodeship_id

      t.timestamps null: false
    end
  end
end
