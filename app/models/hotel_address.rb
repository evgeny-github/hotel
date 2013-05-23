class HotelAddress < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :country
end
