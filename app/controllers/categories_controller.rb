class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@categories = Category.find(:user_id => current_user.id)
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:notice] = 'New category added.'
			redirect_to('/')
		else
			flash[:notice] = 'There was an error saving the new catogory'
			redirect_to('/')
		end
	end

	def category_params
		params.require(:category).permit(:categoryName,:user_id)
	end

end
