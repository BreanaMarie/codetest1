class Attendee < ActiveRecord::Base
  has_many :attendances
  has_many :talks, :through => :attendances
end
