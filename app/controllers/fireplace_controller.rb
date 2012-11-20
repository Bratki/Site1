class FireplaceController < ApplicationController

def index
@fireplaces = Fireplace.all
end



end
