class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote
      t.integer :valid
      t.integer :invalid
      t.integer :empty
      t.integer :other
      t.integer :card
      t.integer :commitee_id
      t.integer :district_id

      t.timestamps null: false
    end
  end
end
