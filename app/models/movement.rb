class Movement < ActiveRecord::Base
  attr_accessible :date, :subject, :type_movement, :amount
  
  scope :previous, where("date < ?", Time.now)
end
