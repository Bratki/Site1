class CommentController < ApplicationController
  def new
  	@fireplace = Fireplace.find(params[:id])
	@comment = @fireplace.comments.build(params[:comment])
	@comment.save
	

	redirect_to "fireplace/#{params[:id]}"
  end
end
