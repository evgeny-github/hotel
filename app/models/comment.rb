class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hotel

  validates_presence_of :star_rating
  validates_inclusion_of :star_rating,
    in: [1, 2, 3, 4, 5],
    message: "Rating should be 1-5"

  scope :user_choice, group('hotel_id').where('comments.star_rating IS NOT NULL').order('AVG(comments.star_rating) DESC').limit(3)
end
