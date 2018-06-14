class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @community = @categories[0]
    @housing = @categories[1]
    @forsale = @categories[3]
    @personals = @categories[2]
    @services = @categories[5]
    @jobs = @categories[4]
    @gigs = @categories[7]
  end
end
