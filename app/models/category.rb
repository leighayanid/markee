class Category < ApplicationRecord
	
	scope :sort_by_name, lambda { order("categoryName ASC")}
	belongs_to :user
	belongs_to :link, {:optional => true}
end
