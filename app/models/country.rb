class Country < ActiveRecord::Base
  has_many :hotel_addresses
end
