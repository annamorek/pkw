class District < ActiveRecord::Base
  has_many :votes
  belongs_to :voivodeship
  belongs_to :user

  validates :electorate, numericality: true
  validates :mandate, numericality: true
  validates :invalid_vote, numericality: true
  validates :empty, numericality: true
  validates :other, numericality: true
  validates :card, numericality: true

  def valid_votes
    total = self.votes.inject(0){|s,v| s + v.vote }
  end
end
