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
  def set_districts
    @district = District.find(params[:id])
  end
  def valid_votes
    total = self.votes.inject(0){|s,v| s + v.vote }
  end
  def invalid_votes
    total = self.invalid_vote + self.empty + self.other
  end
  def total
    total = self.valid_votes + self.invalid_votes
  end
  def zlodzieje
    zlodzieje = self.card - self.total
  end
  def vo
    vo = self.voivodeship_id
  end
  def frek
    frek = ((self.total.to_f / self.electorate.to_f)*100).round(2)
  end
end