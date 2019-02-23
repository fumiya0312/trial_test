class EntriesController < ApplicationController
	def new; end

	def create
		entry = Entry.new(entry_params)
		entry.blog_id = params[:blog_id]
		p params[:blog_id]
		entry.save
		redirect_to blog_path(entry.blog)
	end

	def show
		@entry = Entry.find(params[:id])
	end

	def destroy
		@entry = Entry.find(params[:id])
		@entry.destroy
		redirect_to blog_path(@entry.blog)
	end

	def edit; end

	private
	def entry_params
		params.require(:entry).permit(:title, :body, :image)
	end
end
