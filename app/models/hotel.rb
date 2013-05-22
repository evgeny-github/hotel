class Hotel < ActiveRecord::Base
  has_many :comments
  has_one :hotel_address

  validates_presence_of :title, :rating

  mount_uploader :image, ImageUploader

  def rating_average
    self.comments.average('star_rating')
  end

end
