require 'spec_helper'

describe "plans/new" do
  before(:each) do
    assign(:plan, stub_model(Plan,
      :where => "MyString",
      :what => "MyString"
    ).as_new_record)
  end

  it "renders new plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path, :method => "post" do
      assert_select "input#plan_where", :name => "plan[where]"
      assert_select "input#plan_what", :name => "plan[what]"
    end
  end
end
