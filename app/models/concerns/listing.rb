class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory

  geocoded_by :full_address
  after_validation :geocode
end
