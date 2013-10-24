require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :grocery_list => "",
      :name => "MyString",
      :price => 1.5,
      :units => 1,
      :total => 1.5
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_grocery_list[name=?]", "item[grocery_list]"
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_price[name=?]", "item[price]"
      assert_select "input#item_units[name=?]", "item[units]"
      assert_select "input#item_total[name=?]", "item[total]"
    end
  end
end
