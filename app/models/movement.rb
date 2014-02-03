class Movement < ActiveRecord::Base  
  scope :previous, where("date < ?", Time.now)
end
