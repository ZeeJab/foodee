# == Schema Information
#
# Table name: receipts
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Receipt < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders
  has_many :dishes, :through => :orders
end
