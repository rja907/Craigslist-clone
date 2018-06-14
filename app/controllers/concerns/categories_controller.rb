class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @community = @categories[0]
    @housing = @categories[1]
    
  end
end
