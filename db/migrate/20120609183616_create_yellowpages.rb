class CreateYellowpages < ActiveRecord::Migration
  def change
    create_table :yellowpages do |t|

      t.timestamps
    end
  end
end
