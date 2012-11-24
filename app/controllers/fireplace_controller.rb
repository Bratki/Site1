class FireplaceController < ApplicationController

def index
	@fireplaces = Fireplace.all
end

def show
	@fireplace = Fireplace.find(params[:id])
end

def create_comment
	@fireplace = Fireplace.find(params[:id])
	@comment = @fireplace.comments.build(params[:content],params[:name])
	if @comment.save?
		flash[:notice] = "Added"
	else
		flash[:notice] = "Not added"
	end
	redirect_to :action=>:show, :id=>@fireplace.id
end


end
