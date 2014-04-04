class CountriesController < ApplicationController
  def index
    if params[:query].present?
      @countries = Country.search(params[:query], page: params[:page])
    else
      @countries = Country.all.page params[:page]
    end
  end

  # ...
end