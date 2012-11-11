class Business < ActiveRecord::Base
  has_many :financial_assistances
  has_many :additional_programs
  belongs_to :location

  attr_accessible :name, :type_of_care, :email, :name_of_contact, :max_age, :min_age, :vacancies, :website, :location_id

  def as_json(options={})
    super(:only => [:name, :type_of_care, :email, :name_of_contact, :max_age, :min_age, :vacancies, :website], :include => {[:locations]})
  end
end
