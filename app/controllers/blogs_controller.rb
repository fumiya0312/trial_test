class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
		@q = Blog.ransack(params[:q])
		@blogs = @q.result
	end

	def new; end

	def create
		Blog.create(blog_params)
		redirect_to blogs_path
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def edit; end

	def destroy
		@blog = Blog.find(params[:id])
		@blog.destroy
		redirect_to root_path
	end

	private
	def blog_params
		params.require(:blog).permit(:title)
	end
end
