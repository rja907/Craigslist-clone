class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end
end
