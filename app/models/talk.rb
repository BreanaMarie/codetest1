class Talk < ActiveRecord::Base
  has_many :attendances
  has_many :attendees, :through => :attendances

end
