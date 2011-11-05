require 'spec_helper'

describe ExamplesController do
  render_views
  
  describe "XHR GET harparray" do
    before {
      # stub the actual service request
      controller.stub(:earthquake_count).and_return(10)
    }
    subject { xhr :get, :harparray }
    it { should be_success }
    its(:body) { should include('were 10 M1') }
  end

end