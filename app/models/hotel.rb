class Hotel < ActiveRecord::Base
  has_many :comments
  has_one :hotel_address
  accepts_nested_attributes_for :hotel_address

  validates_presence_of :title, :rating
  validates_inclusion_of :rating,
    in: [1, 2, 3, 4, 5],
    message: "Rating should be 1-5"
  validates :title, length: { minimum: 3, maximum: 30 }
  validates_format_of :title,
    with: /^[-a-z0-9_'.,:" ()]+$/i,
    message: "Title acceptes letters, digits, space and special signs -_'.,:\" ()"

  mount_uploader :image, ImageUploader

  def rating_average
    #self.comments.average('star_rating')
    (self.comments.average('star_rating').to_f*100).to_i / 100.0
  end

end
