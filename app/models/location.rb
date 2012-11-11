class Location < ActiveRecord::Base
  has_many :businesses

  attr_accessible :address, :city, :state, :zipp, :county, :lat, :long

  geocoded_by :full_address, :latitude  => :lat, :longitude => :long
  after_validation :geocode

  def full_address
    return self.address << "," << self.city << "," << self.state if address && city && state
  end

end
