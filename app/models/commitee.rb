class Commitee < ActiveRecord::Base
  has_many :votes
  has_and_belongs_to_many :voivodeships, join_table: :commitees_voivodeships
  accepts_nested_attributes_for :voivodeships
  validates :name, presence: true, length: {within: 2..50}
  validates :party, presence: true, length: {within: 2..50}
end