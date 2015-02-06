class FixVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :invalid_vote, :integer
    add_column :districts, :invalid_vote, :integer
    remove_column :votes, :empty, :integer
    add_column :districts, :empty, :integer
    remove_column :votes, :other, :integer
    add_column :districts, :other, :integer
    remove_column :votes, :card, :integer
    add_column :districts, :card, :integer
    remove_column :votes, :valid_vote, :integer

  end
end