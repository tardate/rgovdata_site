class DatasetsController < ApplicationController
  def show
    @dataset = RGovData::Catalog.get(params[:id])
    @dataset.limit = AppConstants.live_explorer_record_limit if AppConstants.live_explorer_record_limit.present?
  end
end
