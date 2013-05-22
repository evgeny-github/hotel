class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hotel

  validates_presence_of :star_rating

  scope :user_choice, group('hotel_id').where('comments.star_rating IS NOT NULL').order('AVG(comments.star_rating) DESC').limit(2)
end
