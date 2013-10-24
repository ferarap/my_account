class GroceryList < ActiveRecord::Base
  attr_accessible :name, :items_attributes
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true
end
