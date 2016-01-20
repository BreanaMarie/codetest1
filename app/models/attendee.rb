class Attendee < ActiveRecord::Base
  has_many :attendences
  has_many :talks, :through => :attendences
end
