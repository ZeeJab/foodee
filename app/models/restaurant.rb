
# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cuisine    :string(255)
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base
	validates :cuisine, :presence => true
	validates :address, :presence => true
	validates_length_of :name, :minimum => 3

	has_many :dishes	



end
