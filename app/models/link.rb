class Link < ApplicationRecord
	
	self.per_page = 10 
	belongs_to :user, { :optional => true } 
	has_one :category 
	validates :link, :presence => true, :length => {:maximum => 250}, :url => true

end
