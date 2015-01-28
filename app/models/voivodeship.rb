class Voivodeship < ActiveRecord::Base
  has_many :districts
  has_and_belongs_to_many :commitees

end
