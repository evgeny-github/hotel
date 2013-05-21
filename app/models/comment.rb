class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hotel

  validates_presence_of :star_rating
end
