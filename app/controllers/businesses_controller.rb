class BusinessesController < ApplicationController
  def index
    @businesses = Business.scoped
    @businesses = @businesses.where("type_of_care IN (:type_of_care)", :type_of_care => params[:type_of_care]) if params[:type_of_care]
    @businesses = @businesses.where("max_age >= ? AND min_age <= ? ", params[:age],params[:age]) if params[:age]
    @businesses = @businesses.where("location_id IN (:location)", :location => Location.near([params[:lat],params[:lon]],params[:range],:order => :distance))

    respond_to do |format|
      format.xml { render :xml => @businesses }
      format.json { render :json => @businesses }
    end
  end

  def show
    @business = Business.find(params[:business][:name])
  end
end
