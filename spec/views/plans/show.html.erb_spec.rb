require 'spec_helper'

describe "plans/show" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :start => "2012-09-12 03:42:34",
      :where => "Where",
      :what => "What"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/When/)
    rendered.should match(/Where/)
    rendered.should match(/What/)
  end
end
