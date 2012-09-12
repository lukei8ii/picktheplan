require 'spec_helper'

describe "plans/index" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :where => "Where",
        :what => "What"
      ),
      stub_model(Plan,
        :where => "Where",
        :what => "What"
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    assert_select "tr>td", :text => "What".to_s, :count => 2
  end
end
