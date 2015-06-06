class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end 

	def show
		@tag = Tag.find(params[:id])
	end 

	#deleting from index so we have to get the current tag id
	def destroy
		@tag = Tag.find(params[:id])
	    @tag.destroy
	    respond_to do |format|
	    format.html { redirect_to tags_url, notice: "'#{@tag.name}' was successfully deleted." }
	    format.json { head :no_content }
	end 
    end
end
