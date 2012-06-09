class AddEventIdToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :event_id, :int
  end
end
