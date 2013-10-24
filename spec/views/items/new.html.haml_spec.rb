require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :grocery_list => "",
      :name => "MyString",
      :price => 1.5,
      :units => 1,
      :total => 1.5
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_grocery_list[name=?]", "item[grocery_list]"
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_price[name=?]", "item[price]"
      assert_select "input#item_units[name=?]", "item[units]"
      assert_select "input#item_total[name=?]", "item[total]"
    end
  end
end
