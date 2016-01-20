class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer "talk_id"
      t.integer "attendee_id"

      t.timestamps null: false
    end
  end
end
