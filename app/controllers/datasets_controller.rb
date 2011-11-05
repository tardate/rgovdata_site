class DatasetsController < ApplicationController
  before_filter :setup_resource
  before_filter :setup_records, :only => :table

  protected

  def setup_resource
    @dataset = RGovData::Catalog.get(params[:id])
    @dataset.limit = AppConstants.live_explorer_record_limit if AppConstants.live_explorer_record_limit.present?
  end

  def setup_records
    @records = @dataset.records
  rescue
    # ignore any errors and just return an empty set
    @records = []
  end
end
