class CreateEventVenues < ActiveRecord::Migration
  def self.up
    create_table :event_venues do |t|
      t.string :venue_name
      t.string :venue_address
      t.string :venue_calendar_color

      t.timestamps
    end
    add_column :events, :event_venue_id, :integer
    add_index :events, :event_venue_id
  end

  def self.down
    drop_table :event_venues
  end
end
