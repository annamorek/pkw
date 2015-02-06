class CommiteesVoivodeship < ActiveRecord::Base
  belongs_to :commitee
  belongs_to :voivodeship
end
