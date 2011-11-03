require 'spec_helper'

describe GuidesController do
  render_views
  
  describe "GET index" do
    subject { get :index }
    it { should be_success }
  end

end
