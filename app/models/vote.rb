class Vote < ActiveRecord::Base
  belongs_to :district
  belongs_to :commitee

  validates :vote, numericality: true
  validates :valid, numericality: true
  validates :invalid, numericality: true
  validates :empty, numericality: true
  validates :other, numericality: true
  validates :card, numericality: true
end
