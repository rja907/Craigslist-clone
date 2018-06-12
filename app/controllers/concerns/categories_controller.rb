class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @community = @categories[0]
  end
end
