class AddCountryIdToHotelAddress < ActiveRecord::Migration
  def change
    add_column :hotel_addresses, :country_id, :integer

  end
end
