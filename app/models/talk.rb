class Talk < ActiveRecord::Base
  has_many :attendences
  has_many :attendees, :through => :attendences

end
