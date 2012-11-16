# == Schema Information
#
# Table name: dishes
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  cost          :decimal(, )
#  photo         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#

class Dish < ActiveRecord::Base
  validates :name, :photo, :presence => true
  validates :cost, :numericality => {:greater_than => 10}

  belongs_to :restaurant
  has_many :orders
  has_many :receipts, :through => :orders
end
