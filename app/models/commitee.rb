class Commitee < ActiveRecord::Base
  has_many :votes
  has_and_belongs_to_many :voivodeships, join_table: :commitees_voivodeships
  accepts_nested_attributes_for :voivodeships
  has_attached_file :photo
  validates :name, presence: true, length: {within: 2..50}
  validates :party, presence: true, length: {within: 2..50}

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end