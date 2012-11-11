class BusinessesController < ApplicationController
  def index
    @businesses = Business.scoped
    @businesses = @businesses.where("type_of_care = ?", params[:type_of_care]) if params[:type_of_care]
    @businesses = @businesses.where("max_age >= ? AND min_age <= ? ", params[:age],params[:age]) if params[:age]

    respond_to do |format|
      format.xml { render :xml => @businesses }
      format.json { render :json => params }
    end
  end

  def show
    @business = Business.find(params[:business][:name])
  end
end
