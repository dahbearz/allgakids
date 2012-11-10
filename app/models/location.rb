class Location < ActiveRecord::Base
  has_many :businesses

  attr_accessible :address, :city, :state, :zipp, :county

end
