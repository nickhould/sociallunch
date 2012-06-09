class AddEventIdToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :event_id, :int
  end
end
