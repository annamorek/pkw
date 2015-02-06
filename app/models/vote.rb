class Vote < ActiveRecord::Base
  belongs_to :district
  belongs_to :commitee

  validates :vote, numericality: true

  def nazwad
    nazwad = self.district.name
  end
  def nazwac
    nazwac = self.commitee.name
  end
end
