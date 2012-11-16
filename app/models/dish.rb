class Dish < ActiveRecord::Base
  validates :name, :photo, :presence => true
  validates :cost, :numericality => {:greater_than => 10}

  belongs_to :restaurant
end
