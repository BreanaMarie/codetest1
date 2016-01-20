class Attendance < ActiveRecord::Base
  belongs_to :talks
  belongs_to :attendees
end
