require 'spec_helper'

describe "grocery_lists/edit" do
  before(:each) do
    @grocery_list = assign(:grocery_list, stub_model(GroceryList,
      :name => "MyString"
    ))
  end

  it "renders the edit grocery_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grocery_list_path(@grocery_list), "post" do
      assert_select "input#grocery_list_name[name=?]", "grocery_list[name]"
    end
  end
end
