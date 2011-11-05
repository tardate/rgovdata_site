class ExamplesController < ApplicationController
  def harparray
    @example = earthquake_count
  end
  def nlb
    @example = library_list
  end

  protected

  def earthquake_count
    RGovData::Catalog.get('//us/eqs7day-M1/csv').records.count
  end
  def library_list
    RGovData::Catalog.get('//sg/nlb/LibrarySet').records
  end
end