class LinksController < ApplicationController

    require 'mechanize'
    after_action :get_title, only: [:create, :update]

    def index
        @link = Link.all
    end

    def show
        @link = Link.find(params[:id])
    end

    def new
        @link = Link.new(:user_id => current_user.id)
        @link.category = @category
    end

    def create
        @link = Link.new(link_params)
        if @link.save
          flash.now[:notice] = "New linked added."
          redirect_to('/')
        else
          flash.now[:notice] = "There was an error saving the link."
          redirect_to('/')
        end

    end

    def edit
        @link = Link.find(params[:id])
    end

    def update
        @link = Link.find(params[:id])
        if @link.update_attributes(link_params)
            redirect_to('/')
        else
            redirect_to('edit')
        end
    end

    def delete
      @link = Link.find(params[:id])
    end

    def destroy
        @link = Link.find(params[:id])
        @link.destroy
        flash[:notice] = "Links deleted."
        redirect_to('/')
    end

    def link_params
        params.require(:link).permit(:link,:user_id,:category_id, :title)
    end

    def get_title
        @title = Mechanize.new.get(@link.link).title
        @link.title = @title
        @link.save
    end

end
