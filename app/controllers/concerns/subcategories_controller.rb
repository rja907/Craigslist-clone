class SubcategoriesController < ApplicationController
  def show
  end
  def find_by_category
    category = Category.find(params[:category_id])
    subcategory = category.subcategory.find_all
    render json: { subcategory: subcategories }
  end
end
