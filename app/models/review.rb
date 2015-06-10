class Review < ActiveRecord::Base
  belongs_to :restaurant

  @allowed_rating = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, :inclusion=> { :in => @allowed_rating }
  validates :rating, numericality: { only_integer: true }
end
