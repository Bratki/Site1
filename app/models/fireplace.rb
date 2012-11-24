class Fireplace < ActiveRecord::Base
  serialize :images
  attr_accessible :description,:images
  has_many :comments
end
