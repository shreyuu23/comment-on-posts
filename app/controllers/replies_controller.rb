class RepliesController < ApplicationController
	  def create
      # @comment = Comment.find(params[:comment_id])
        # @reply =  @comment.replies.create(params[:reply].permit(:name, :reply))
        params.permit!
        @reply = Reply.new(params["reply"])
        @reply.save
       redirect_to posts_path  
  end

   def new
    @reply = Reply.new
    @comments = Comment.all.pluck(:name, :id)
   end
end