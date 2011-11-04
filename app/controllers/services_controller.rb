class ServicesController < ApplicationController
  def show
    @service = RGovData::Catalog.get(params[:id])
  end
end
