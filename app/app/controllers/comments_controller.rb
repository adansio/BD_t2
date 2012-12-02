
class CommentsController < ApplicationController

	def create
	    @post = Post.find(params[:id])
		@comment = @post.comments.create(params[:comment])
		@comment.user = current_user
		@comment.save
	   	redirect_to post_path(@post)
	end

	def like
		@comment = Comment.find(params[:id])
		current_user.flag(@comment, :like)
		current_user.unflag(@comment, :unlike)
		redirect_to post_path(@comment.post)
	end

	def unlike
		@comment = Comment.find(params[:id])
		current_user.flag(@comment, :unlike)
		current_user.unflag(@comment, :like)
		redirect_to post_path(@comment.post)
	end


end
