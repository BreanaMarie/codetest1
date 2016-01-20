class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :host
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end
  end
end
