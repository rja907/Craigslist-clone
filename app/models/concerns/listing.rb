class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
end
