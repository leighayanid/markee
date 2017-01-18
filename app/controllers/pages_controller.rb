class PagesController < ApplicationController

  before_action :authenticate_user!
  before_action :find_user_categories

  def index
  	@links = Link.where(:user_id => current_user.id).paginate(:page => params[:page])
    @link = Link.new
    @category = Category.new
  end
  
  def categories
  	
  end 

  def find_user_categories
  	@categories = Category.where(:user_id => current_user.id)
  end

end
