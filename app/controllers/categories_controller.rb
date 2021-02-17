class CategoriesController < ApplicationController
	def index
		@categories = Category.joins(:products).order(:title).uniq
	end
end
