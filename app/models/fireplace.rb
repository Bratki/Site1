class Fireplace < ActiveRecord::Base
  serialize :images
  attr_accessible :description,:images
  
end
