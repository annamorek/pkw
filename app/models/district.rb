class District < ActiveRecord::Base
  has_many :votes
  belongs_to :voivodeship
  belongs_to :user

  validates :electorate, numericality: true
  validates :mandate, numericality: true
end
