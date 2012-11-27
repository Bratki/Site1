class CommentController < ApplicationController
  def new
  	@fireplace = Fireplace.find(params[:id])
	@comment = @fireplace.comments.build(params[:comment])
	if (!((params[:comment][:name]=="")||(params[:comment][:content]=="")))
	@comment.save
	end

	redirect_to "/fireplace/#{params[:id]}"
  end
end
