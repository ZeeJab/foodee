# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  amount     :integer
#  receipt_id :integer
#  dish_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :dish
end
