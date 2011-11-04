class DatasetsController < ApplicationController
  def show
    @dataset = RGovData::Catalog.get(params[:id])
  end
end
