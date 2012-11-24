class FireplaceController < ApplicationController

def index
	@fireplaces = Fireplace.all
end

def show
	@fireplace = Fireplace.find(params[:id])
	@comments = @fireplace.comments
end


end
