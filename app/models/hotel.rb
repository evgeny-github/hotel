class Hotel < ActiveRecord::Base
  has_many :comments
  has_one :hotel_address
  #~ accepts_nested_attributes_for :hotel_address

  validates_presence_of :title, :rating

  mount_uploader :image, ImageUploader

  def rating_average
    #self.comments.average('star_rating')
    (self.comments.average('star_rating').to_f*100).to_i / 100.0
  end

end
