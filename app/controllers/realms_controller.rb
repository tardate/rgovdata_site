class RealmsController < ApplicationController
  def index
    @realms = RGovData::Catalog.get(nil).records
  end
  def show
    @realm = RGovData::Catalog.get("//#{params[:id]}")
  end
end
