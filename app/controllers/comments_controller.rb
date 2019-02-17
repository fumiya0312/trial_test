class CommentsController < ApplicationController
	def new; end

	def create
		@blog = Blog.find(params[:blog_id])
		comment = Comment.new(comment_params)
		p comment_params
		comment.entry_id = params[:entry_id]
		p params[:entry_id]
		# comment.save
		if comment.save
			logger.debug("入ってる")
			@mail = NoticeMailer.sendmail_confirm(comment).deliver_later
			redirect_to blog_entry_path(@blog, @comment.entry)
		else
			render 'new'
		end
	end

	def update
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.find(params[:id])
		@comment.status = "approved"
		@comment.save
		redirect_to blog_entry_path(@blog, @comment.entry)
	end

	def destroy
		@blog = Blog.find(params[:blog_id])
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to blog_entry_path(@blog, @comment.entry)
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :status)
	end
end
