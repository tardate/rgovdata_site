require 'spec_helper'

describe ApplicationHelper do

  describe "#insert_ga_script" do
    subject { helper.insert_ga_script(ga_id) }
    context "with GA ID" do
      let(:ga_id) { 'abc' }
      it { should include(ga_id) }
      it "should be html_safe" do
        subject.html_safe?.should be_true
      end
    end
    context "without GA ID" do
      let(:ga_id) { nil }
      it { should be_nil }
    end
  end

  describe "#menu_options" do
    subject { helper.menu_options }
    it { should be_a(Array) }
    context "elements" do
      it "should be a hash with :url, and :title" do
        subject.each do |el|
          el.should be_a(Hash)
          el[:url].should be_present
          el[:title].should be_present
          el[:selected_matcher].should be_present
        end
      end
    end
  end
    
end
