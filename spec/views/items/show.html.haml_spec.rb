require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :grocery_list => "",
      :name => "Name",
      :price => 1.5,
      :units => 1,
      :total => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
