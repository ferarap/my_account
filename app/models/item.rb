class Item < ActiveRecord::Base
  attr_accessible :name, :price, :total, :units
  belongs_to :grocery_list
end
