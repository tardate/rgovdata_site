require 'spec_helper'

describe ExamplesController do
  render_views
  
  describe "XHR GET nlb" do
    before {
      # stub the actual service request
      controller.stub(:library_list).and_return([])
    }
    subject { xhr :get, :nlb }
    it { should be_success }
    its(:body) { should include('List of Singapore Libraries') }
  end

end