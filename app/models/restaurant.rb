class Restaurant < ActiveRecord::Base
  has_many :reviews, :dependent => :destroy

  @allowed_category = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, :inclusion=> { :in => @allowed_category }
end
