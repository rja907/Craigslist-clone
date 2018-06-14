class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @community = @categories[0]
    @housing = @categories[1]
    @forsale = @categories[3]
  end
end
