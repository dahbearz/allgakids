class Business < ActiveRecord::Base
  has_many :financial_assistances
  has_many :additional_programs
  belongs_to :location

  attr_accessible :name, :type_of_care, :email, :name_of_contact, :max_age, :min_age, :vacancies, :website, :location_id

  #This is a dynamic queries
  def self.by_name(query)
    where("name = (?)", query) if query
  end

  def self.by_type_of_care(query)
    query.each do |search|
      where("type_of_care = (?)", search) if search
    end
  end

  def self.by_accredidation(query)
    where("accredidation = (?)", query) if query
  end

  def self.older_than(query)
    where("max_age >= (?)", query) if query
  end

  def self.younger_than(query)
    where("min_age <= (?)", query) if query
  end

  def self.vacant(query)
    where("vacancies > (?)", query) if query
  end

  def self.by_location(query)
    Location.find(:location_id)
  end
end
