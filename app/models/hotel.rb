class Hotel < ActiveRecord::Base
  has_many :comments
  has_one :hotel_address

  validates_presence_of :title, :rating
end
