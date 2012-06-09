class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.boolean :response

      t.timestamps
    end
  end
end
